'use strict';

// Frida capture for Panasonic EcUpdate_SZ5M123_V100L19.exe (32-bit)
// Run as Administrator:
//   frida -f "C:\ec-handoff\EcUpdate_SZ5M123_V100L19.exe" -l "C:\ec-handoff\frida-ec-dump.js"
// Output: C:\ec-dump\*.bin
//
// Goal: capture plaintext / decompressed EC firmware buffers if the updater
// handles them locally. Do NOT flash any modified EC image.

const OUT = 'C:\\ec-dump\\';
let seq = 0;

function log(msg) {
  console.log('[ec-dump] ' + msg);
}

function getExport(mod, name) {
  let p = null;
  try {
    p = Module.getExportByName(mod, name);
  } catch (e) {
    try {
      p = Module.load(mod).getExportByName(name);
    } catch (e2) {
      p = null;
    }
  }
  if (!p) {
    log('missing ' + mod + '!' + name);
  }
  return p;
}

function hook(mod, name, callbacks) {
  const p = getExport(mod, name);
  if (!p) return;
  try {
    Interceptor.attach(p, callbacks);
    log('hooked ' + mod + '!' + name);
  } catch (e) {
    log('hook failed ' + mod + '!' + name + ': ' + e);
  }
}

function dump(tag, ptr, len) {
  try {
    if (ptr === null || ptr.isNull()) return;
    len = Number(len);
    if (!len || len <= 0 || len > 0x2000000) return;
    const data = ptr.readByteArray(len);
    if (!data) return;
    seq += 1;
    const n = ('000' + seq).slice(-3);
    const path = OUT + n + '-' + tag + '.bin';
    const f = new File(path, 'wb');
    f.write(data);
    f.close();
    log('dump ' + path + ' (' + len + ' bytes)');
  } catch (e) {
    log('dump error ' + tag + ': ' + e);
  }
}

log('arch=' + Process.arch + ' pid=' + Process.id);

hook('bcrypt.dll', 'BCryptEncrypt', {
  onEnter(args) {
    this.inPtr = args[1];
    this.inLen = args[2].toInt32();
    this.outPtr = args[6];
    this.outLen = args[7].toInt32();
    this.resultPtr = args[8];
    log('BCryptEncrypt in=' + this.inLen + ' out=' + this.outLen);
    dump('bcrypt-encrypt-input', this.inPtr, this.inLen);
  },
  onLeave(retval) {
    let n = this.outLen;
    try {
      const v = this.resultPtr.readU32();
      if (v > 0 && v <= this.outLen) n = v;
    } catch (e) {}
    dump('bcrypt-encrypt-output', this.outPtr, n);
  }
});

hook('bcrypt.dll', 'BCryptDecrypt', {
  onEnter(args) {
    this.inPtr = args[1];
    this.inLen = args[2].toInt32();
    this.outPtr = args[6];
    this.outLen = args[7].toInt32();
    this.resultPtr = args[8];
    log('BCryptDecrypt in=' + this.inLen + ' out=' + this.outLen);
    dump('bcrypt-decrypt-input', this.inPtr, this.inLen);
  },
  onLeave(retval) {
    let n = this.outLen;
    try {
      const v = this.resultPtr.readU32();
      if (v > 0 && v <= this.outLen) n = v;
    } catch (e) {}
    dump('bcrypt-decrypt-output', this.outPtr, n);
  }
});

function hookDecompress(name) {
  hook('ntdll.dll', name, {
    onEnter(args) {
      this.outPtr = args[1];
      this.outLen = args[2].toInt32();
      this.inPtr = args[3];
      this.inLen = args[4].toInt32();
      this.finalPtr = args[5];
      log(name + ' in=' + this.inLen + ' out=' + this.outLen);
      dump(name + '-input', this.inPtr, this.inLen);
    },
    onLeave(retval) {
      let n = this.outLen;
      try {
        const v = this.finalPtr.readU32();
        if (v > 0 && v <= this.outLen) n = v;
      } catch (e) {}
      dump(name + '-output', this.outPtr, n);
    }
  });
}

hookDecompress('RtlDecompressBuffer');
hookDecompress('RtlDecompressBufferEx');

hook('kernel32.dll', 'DeviceIoControl', {
  onEnter(args) {
    this.ioctl = args[1].toInt32() >>> 0;
    this.inPtr = args[2];
    this.inLen = args[3].toInt32();
    this.outPtr = args[4];
    this.outLen = args[5].toInt32();
    this.bytesPtr = args[6];
    log('DeviceIoControl ioctl=0x' + this.ioctl.toString(16) + ' in=' + this.inLen + ' out=' + this.outLen);
    dump('ioctl-' + this.ioctl.toString(16) + '-input', this.inPtr, this.inLen);
  },
  onLeave(retval) {
    let n = this.outLen;
    try {
      const v = this.bytesPtr.readU32();
      if (v > 0 && v <= this.outLen) n = v;
    } catch (e) {}
    dump('ioctl-' + this.ioctl.toString(16) + '-output', this.outPtr, n);
  }
});

log('ready; click update in the GUI');
