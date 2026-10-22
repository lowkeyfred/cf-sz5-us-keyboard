            0x00000240      ba34ad0502     mov edx, 0x205ad34
            0x00000245      6f             outsd dx, dword [rsi]
            0x00000246      1442           adc al, 0x42
            0x00000248      95             xchg ebp, eax
            0x00000249      2e4da0398e..   movabs al, byte cs:[0x9576e91b92b8e39] ; [0x9576e91b92b8e39:1]=255
            0x00000254      3f             invalid
            0x00000255      6d             insd dword [rdi], dx
            0x00000256      d211           rcl byte [rcx], cl
            0x00000258      8e             invalid
            0x00000259      3900           cmp dword [rax], eax
            0x0000025b      a0c969723b..   movabs al, byte [0x406333c23b7269c9] ; [0x406333c23b7269c9:1]=255
            0x00000264      98             cwde
            0x00000265      6c             insb byte [rdi], dx
            0x00000266      ae             scasb al, byte [rdi]
            0x00000267      4b87fb         xchg r11, rdi
            0x0000026a      9a             invalid
            0x0000026b      f9             stc
            0x0000026c      ce             invalid
            0x0000026d      95             xchg ebp, eax
            0x0000026e      83f845         cmp eax, 0x45               ; 'E'
            0x00000271      46495f         pop r15
            0x00000274      4c4f41445f     pop rdi
            0x00000279      4552           push r10
            0x0000027b      52             push rdx
            0x0000027c      4f52           push r10
            0x0000027e      0000           add byte [rax], al
            0x00000280      0000           add byte [rax], al
            0x00000282      0000           add byte [rax], al
            0x00000284      0000           add byte [rax], al
            0x00000286      0000           add byte [rax], al
            0x00000288      004546         add byte [rbp + 0x46], al
            0x0000028b      495f           pop r15
            0x0000028d      494e56         push rsi
            0x00000290      414c49445f     pop rdi
            0x00000295      50             push rax
            0x00000296      4152           push r10
            0x00000298      414d4554       push r12
            0x0000029c      4552           push r10
            0x0000029e      0000           add byte [rax], al
            0x000002a0      0000           add byte [rax], al
            0x000002a2      4546495f       pop r15
            0x000002a6      55             push rbp
            0x000002a7      4e53           push rbx
            0x000002a9      55             push rbp
            0x000002aa      50             push rax
            0x000002ab      50             push rax
            0x000002ac      4f52           push r10
            0x000002ae      54             push rsp
            0x000002af      45440000       add byte [rax], r8b
            0x000002b3      0000           add byte [rax], al
            0x000002b5      0000           add byte [rax], al
            0x000002b7      0000           add byte [rax], al
            0x000002b9      0000           add byte [rax], al
            0x000002bb      4546495f       pop r15
            0x000002bf      4241445f       pop rdi
            0x000002c3      4255           push rbp
            0x000002c5      46464552       push r10
            0x000002c9      5f             pop rdi
            0x000002ca      53             push rbx
            0x000002cb      495a           pop r10
            0x000002cd      450000         add byte [r8], r8b
            0x000002d0      0000           add byte [rax], al
            0x000002d2      0000           add byte [rax], al
            0x000002d4      4546495f       pop r15
            0x000002d8      4255           push rbp
            0x000002da      46464552       push r10
            0x000002de      5f             pop rdi
            0x000002df      54             push rsp
            0x000002e0      4f4f5f         pop r15
            0x000002e3      53             push rbx
            0x000002e4      4d414c4c0000   add byte [rax], r8b
            0x000002ea      0000           add byte [rax], al
            0x000002ec      004546         add byte [rbp + 0x46], al
            0x000002ef      495f           pop r15
            0x000002f1      4e4f54         push r12
            0x000002f4      5f             pop rdi
            0x000002f5      52             push rdx
            0x000002f6      45414459       pop rcx
            0x000002fa      0000           add byte [rax], al
            0x000002fc      0000           add byte [rax], al
            0x000002fe      0000           add byte [rax], al
            0x00000300      0000           add byte [rax], al
            0x00000302      0000           add byte [rax], al
            0x00000304      0000           add byte [rax], al
            0x00000306      4546495f       pop r15
            0x0000030a      444556         push r14
            0x0000030d      4943455f       pop r15
            0x00000311      4552           push r10
            0x00000313      52             push rdx
            0x00000314      4f52           push r10
            0x00000316      0000           add byte [rax], al
            0x00000318      0000           add byte [rax], al
            0x0000031a      0000           add byte [rax], al
            0x0000031c      0000           add byte [rax], al
            0x0000031e      004546         add byte [rbp + 0x46], al
            0x00000321      495f           pop r15
            0x00000323      57             push rdi
            0x00000324      52             push rdx
            0x00000325      4954           push r12
            0x00000327      455f           pop r15
            0x00000329      50             push rax
            0x0000032a      52             push rdx
            0x0000032b      4f54           push r12
            0x0000032d      454354         push r12
            0x00000330      45440000       add byte [rax], r8b
            0x00000334      0000           add byte [rax], al
            0x00000336      0000           add byte [rax], al
            0x00000338      4546495f       pop r15
            0x0000033c      4f55           push r13
            0x0000033e      54             push rsp
            0x0000033f      5f             pop rdi
            0x00000340      4f465f         pop rdi
            0x00000343      52             push rdx
            0x00000344      4553           push r11
            0x00000346      4f55           push r13
            0x00000348      52             push rdx
            0x00000349      434553         push r11
            0x0000034c      0000           add byte [rax], al
            0x0000034e      0000           add byte [rax], al
            0x00000350      004546         add byte [rbp + 0x46], al
            0x00000353      495f           pop r15
            0x00000355      56             push rsi
            0x00000356      4f4c55         push rbp
            0x00000359      4d455f         pop r15
            0x0000035c      434f52         push r10
            0x0000035f      52             push rdx
            0x00000360      55             push rbp
            0x00000361      50             push rax
            0x00000362      54             push rsp
            0x00000363      45440000       add byte [rax], r8b
            0x00000367      0000           add byte [rax], al
            0x00000369      004546         add byte [rbp + 0x46], al
            0x0000036c      495f           pop r15
            0x0000036e      56             push rsi
            0x0000036f      4f4c55         push rbp
            0x00000372      4d455f         pop r15
            0x00000375      4655           push rbp
            0x00000377      4c4c0000       add byte [rax], r8b
            0x0000037b      0000           add byte [rax], al
            0x0000037d      0000           add byte [rax], al
            0x0000037f      0000           add byte [rax], al
            0x00000381      0000           add byte [rax], al
            0x00000383      4546495f       pop r15
            0x00000387      4e4f5f         pop r15
            0x0000038a      4d45444941..   add byte [r8], al
            0x00000391      0000           add byte [rax], al
            0x00000393      0000           add byte [rax], al
            0x00000395      0000           add byte [rax], al
            0x00000397      0000           add byte [rax], al
            0x00000399      0000           add byte [rax], al
            0x0000039b      004546         add byte [rbp + 0x46], al
            0x0000039e      495f           pop r15
            0x000003a0      4d454449415f   pop r15
            0x000003a6      4348414e47..   add byte [rax], r8b
            0x000003af      0000           add byte [rax], al
            0x000003b1      0000           add byte [rax], al
            0x000003b3      0000           add byte [rax], al
            0x000003b5      4546495f       pop r15
            0x000003b9      4e4f54         push r12
            0x000003bc      5f             pop rdi
            0x000003bd      464f55         push r13
            0x000003c0      4e440000       add byte [rax], r8b
            0x000003c4      0000           add byte [rax], al
            0x000003c6      0000           add byte [rax], al
            0x000003c8      0000           add byte [rax], al
            0x000003ca      0000           add byte [rax], al
            0x000003cc      0000           add byte [rax], al
            0x000003ce      4546495f       pop r15
            0x000003d2      4143434553     push r11
            0x000003d7      53             push rbx
            0x000003d8      5f             pop rdi
            0x000003d9      44454e4945..   add byte [rax], r8b
            0x000003e1      0000           add byte [rax], al
            0x000003e3      0000           add byte [rax], al
            0x000003e5      0000           add byte [rax], al
            0x000003e7      4546495f       pop r15
            0x000003eb      4e4f5f         pop r15
            0x000003ee      52             push rdx
            0x000003ef      4553           push r11
            0x000003f1      50             push rax
            0x000003f2      4f4e53         push rbx
            0x000003f5      450000         add byte [r8], r8b
            0x000003f8      0000           add byte [rax], al
            0x000003fa      0000           add byte [rax], al
            0x000003fc      0000           add byte [rax], al
            0x000003fe      0000           add byte [rax], al
            0x00000400      4546495f       pop r15
            0x00000404      4e4f5f         pop r15
            0x00000407      4d4150         push r8
            0x0000040a      50             push rax
            0x0000040b      494e470000     add byte [r8], r8b
            0x00000410      0000           add byte [rax], al
            0x00000412      0000           add byte [rax], al
            0x00000414      0000           add byte [rax], al
            0x00000416      0000           add byte [rax], al
            0x00000418      004546         add byte [rbp + 0x46], al
            0x0000041b      495f           pop r15
            0x0000041d      54             push rsp
            0x0000041e      494d454f55     push r13
            0x00000423      54             push rsp
            0x00000424      0000           add byte [rax], al
            0x00000426      0000           add byte [rax], al
            0x00000428      0000           add byte [rax], al
            0x0000042a      0000           add byte [rax], al
            0x0000042c      0000           add byte [rax], al
            0x0000042e      0000           add byte [rax], al
            0x00000430      0000           add byte [rax], al
            0x00000432      4546495f       pop r15
            0x00000436      4e4f54         push r12
            0x00000439      5f             pop rdi
            0x0000043a      53             push rbx
            0x0000043b      54             push rsp
            0x0000043c      4152           push r10
            0x0000043e      54             push rsp
            0x0000043f      45440000       add byte [rax], r8b
            0x00000443      0000           add byte [rax], al
            0x00000445      0000           add byte [rax], al
            0x00000447      0000           add byte [rax], al
            0x00000449      0000           add byte [rax], al
            0x0000044b      4546495f       pop r15
            0x0000044f      414c52         push rdx
            0x00000452      45414459       pop rcx
            0x00000456      5f             pop rdi
            0x00000457      53             push rbx
            0x00000458      54             push rsp
            0x00000459      4152           push r10
            0x0000045b      54             push rsp
            0x0000045c      45440000       add byte [rax], r8b
            0x00000460      0000           add byte [rax], al
            0x00000462      0000           add byte [rax], al
            0x00000464      4546495f       pop r15
            0x00000468      41424f52       push r10
            0x0000046c      54             push rsp
            0x0000046d      45440000       add byte [rax], r8b
            0x00000471      0000           add byte [rax], al
            0x00000473      0000           add byte [rax], al
            0x00000475      0000           add byte [rax], al
            0x00000477      0000           add byte [rax], al
            0x00000479      0000           add byte [rax], al
            0x0000047b      0000           add byte [rax], al
            0x0000047d      4546495f       pop r15
            0x00000481      49434d50       push r8
            0x00000485      5f             pop rdi
            0x00000486      4552           push r10
            0x00000488      52             push rdx
            0x00000489      4f52           push r10
            0x0000048b      0000           add byte [rax], al
            0x0000048d      0000           add byte [rax], al
            0x0000048f      0000           add byte [rax], al
            0x00000491      0000           add byte [rax], al
            0x00000493      0000           add byte [rax], al
            0x00000495      004546         add byte [rbp + 0x46], al
            0x00000498      495f           pop r15
            0x0000049a      54             push rsp
            0x0000049b      4654           push rsp
            0x0000049d      50             push rax
            0x0000049e      5f             pop rdi
            0x0000049f      4552           push r10
            0x000004a1      52             push rdx
            0x000004a2      4f52           push r10
            0x000004a4      0000           add byte [rax], al
            0x000004a6      0000           add byte [rax], al
            0x000004a8      0000           add byte [rax], al
            0x000004aa      0000           add byte [rax], al
            0x000004ac      0000           add byte [rax], al
            0x000004ae      004546         add byte [rbp + 0x46], al
            0x000004b1      495f           pop r15
            0x000004b3      50             push rax
            0x000004b4      52             push rdx
            0x000004b5      4f54           push r12
            0x000004b7      4f434f4c5f     pop rdi
            0x000004bc      4552           push r10
            0x000004be      52             push rdx
            0x000004bf      4f52           push r10
            0x000004c1      0000           add byte [rax], al
            0x000004c3      0000           add byte [rax], al
            0x000004c5      0000           add byte [rax], al
            0x000004c7      004546         add byte [rbp + 0x46], al
            0x000004ca      495f           pop r15
            0x000004cc      494e434f4d50   push r8
            0x000004d2      4154           push r12
            0x000004d4      49424c455f     pop r15
            0x000004d9      56             push rsi
            0x000004da      4552           push r10
            0x000004dc      53             push rbx
            0x000004dd      494f4e004546   add byte [rbp + 0x46], r8b
            0x000004e3      495f           pop r15
            0x000004e5      53             push rbx
            0x000004e6      454355         push r13
            0x000004e9      52             push rdx
            0x000004ea      4954           push r12
            0x000004ec      59             pop rcx
            0x000004ed      5f             pop rdi
            0x000004ee      56             push rsi
            0x000004ef      494f4c4154     push r12
            0x000004f4      494f4e0000     add byte [rax], r8b
            0x000004f9      004546         add byte [rbp + 0x46], al
            0x000004fc      495f           pop r15
            0x000004fe      4352           push r10
            0x00000500      435f           pop r15
            0x00000502      4552           push r10
            0x00000504      52             push rdx
            0x00000505      4f52           push r10
            0x00000507      0000           add byte [rax], al
            0x00000509      0000           add byte [rax], al
            0x0000050b      0000           add byte [rax], al
            0x0000050d      0000           add byte [rax], al
            0x0000050f      0000           add byte [rax], al
            0x00000511      0000           add byte [rax], al
            0x00000513      4546495f       pop r15
            0x00000517      454e445f       pop rdi
            0x0000051b      4f465f         pop rdi
            0x0000051e      4d45444941..   add byte [r8], al
            0x00000525      0000           add byte [rax], al
            0x00000527      0000           add byte [rax], al
            0x00000529      0000           add byte [rax], al
            0x0000052b      004546         add byte [rbp + 0x46], al
            0x0000052e      495f           pop r15
            0x00000530      55             push rbp
            0x00000531      4e44454649..   pop rdi
            0x0000053a      3239           xor bh, byte [rcx]
            0x0000053c      0000           add byte [rax], al
            0x0000053e      0000           add byte [rax], al
            0x00000540      0000           add byte [rax], al
            0x00000542      0000           add byte [rax], al
            0x00000544      004546         add byte [rbp + 0x46], al
            0x00000547      495f           pop r15
            0x00000549      55             push rbp
            0x0000054a      4e44454649..   pop rdi
            0x00000553      3330           xor esi, dword [rax]
            0x00000555      0000           add byte [rax], al
            0x00000557      0000           add byte [rax], al
            0x00000559      0000           add byte [rax], al
            0x0000055b      0000           add byte [rax], al
            0x0000055d      004546         add byte [rbp + 0x46], al
            0x00000560      495f           pop r15
            0x00000562      454e445f       pop rdi
            0x00000566      4f465f         pop rdi
            0x00000569      46494c450000   add byte [r8], r8b
            0x0000056f      0000           add byte [rax], al
            0x00000571      0000           add byte [rax], al
            0x00000573      0000           add byte [rax], al
            0x00000575      0000           add byte [rax], al
            0x00000577      4546495f       pop r15
            0x0000057b      494e56         push rsi
            0x0000057e      414c49445f     pop rdi
            0x00000583      4c414e4755     push r13
            0x00000588      4147450000     add byte [r8], r8b
            0x0000058d      0000           add byte [rax], al
            0x0000058f      004546         add byte [rbp + 0x46], al
            0x00000592      495f           pop r15
            0x00000594      434f4d50       push r8
            0x00000598      52             push rdx
            0x00000599      4f4d4953       push r11
            0x0000059d      45445f         pop rdi
            0x000005a0      444154         push r12
            0x000005a3      410000         add byte [r8], al
            0x000005a6      0000           add byte [rax], al
            0x000005a8      0000           add byte [rax], al
            0x000005aa      0000           add byte [rax], al
            0x000005ac      0000           add byte [rax], al
            0x000005ae      0000           add byte [rax], al
            0x000005b0      4546495f       pop r15
            0x000005b4      494e54         push rsp
            0x000005b7      4552           push r10
            0x000005b9      52             push rdx
            0x000005ba      55             push rbp
            0x000005bb      50             push rax
            0x000005bc      54             push rsp
            0x000005bd      5f             pop rdi
            0x000005be      50             push rax
            0x000005bf      454e44494e..   add byte [r8], r8b
            0x000005c7      0000           add byte [rax], al
            0x000005c9      4546495f       pop r15
            0x000005cd      52             push rdx
            0x000005ce      4551           push r9
            0x000005d0      55             push rbp
            0x000005d1      4553           push r11
            0x000005d3      54             push rsp
            0x000005d4      5f             pop rdi
            0x000005d5      55             push rbp
            0x000005d6      4e4c4f41445f   pop rdi
            0x000005dc      494d414745..   add byte [r13 + 0x46], r8b
            0x000005e4      495f           pop r15
            0x000005e6      4e4f54         push r12
            0x000005e9      5f             pop rdi
            0x000005ea      4156           push r14
            0x000005ec      41494c4142..   pop r15
            0x000005f4      59             pop rcx
            0x000005f5      4554           push r12
            0x000005f7      0000           add byte [rax], al
            0x000005f9      0000           add byte [rax], al
            0x000005fb      0000           add byte [rax], al
            0x000005fd      0000           add byte [rax], al
            0x000005ff      004546         add byte [rbp + 0x46], al
            0x00000602      495f           pop r15
            0x00000604      4442455f       pop r15
            0x00000608      454f460000     add byte [rax], r8b
            0x0000060d      0000           add byte [rax], al
            0x0000060f      0000           add byte [rax], al
            0x00000611      0000           add byte [rax], al
            0x00000613      0000           add byte [rax], al
            0x00000615      0000           add byte [rax], al
            0x00000617      0000           add byte [rax], al
            0x00000619      4546495f       pop r15
            0x0000061d      4442455f       pop r15
            0x00000621      424f460000     add byte [rax], r8b
            0x00000626      0000           add byte [rax], al
            0x00000628      0000           add byte [rax], al
            0x0000062a      0000           add byte [rax], al
            0x0000062c      0000           add byte [rax], al
            0x0000062e      0000           add byte [rax], al
            0x00000630      0000           add byte [rax], al
            0x00000632      0000           add byte [rax], al
            0x00000634      0000           add byte [rax], al
            0x00000636      0000           add byte [rax], al
            0x00000638      0000           add byte [rax], al
            0x0000063a      0000           add byte [rax], al
            0x0000063c      0000           add byte [rax], al
            0x0000063e      0000           add byte [rax], al
            0x00000640      4546495f       pop r15
            0x00000644      57             push rdi
            0x00000645      4152           push r10
            0x00000647      4e5f           pop rdi
            0x00000649      55             push rbp
            0x0000064a      4e4b4e4f57     push r15
            0x0000064f      4e5f           pop rdi
            0x00000651      474c59         pop rcx
            0x00000654      50             push rax
            0x00000655      480000         add byte [rax], al
            0x00000658      0000           add byte [rax], al
            0x0000065a      4546495f       pop r15
            0x0000065e      57             push rdi
            0x0000065f      4152           push r10
            0x00000661      4e5f           pop rdi
            0x00000663      44454c4554     push r12
            0x00000668      455f           pop r15
            0x0000066a      4641494c55     push rbp
            0x0000066f      52             push rdx
            0x00000670      450000         add byte [r8], r8b
            0x00000673      004546         add byte [rbp + 0x46], al
            0x00000676      495f           pop r15
            0x00000678      57             push rdi
            0x00000679      4152           push r10
            0x0000067b      4e5f           pop rdi
            0x0000067d      57             push rdi
            0x0000067e      52             push rdx
            0x0000067f      4954           push r12
            0x00000681      455f           pop r15
            0x00000683      4641494c55     push rbp
            0x00000688      52             push rdx
            0x00000689      450000         add byte [r8], r8b
            0x0000068c      0000           add byte [rax], al
            0x0000068e      4546495f       pop r15
            0x00000692      57             push rdi
            0x00000693      4152           push r10
            0x00000695      4e5f           pop rdi
            0x00000697      4255           push rbp
            0x00000699      46464552       push r10
            0x0000069d      5f             pop rdi
            0x0000069e      54             push rsp
            0x0000069f      4f4f5f         pop r15
            0x000006a2      53             push rbx
            0x000006a3      4d414c4c0001   add byte [rcx], r8b
            0x000006a9      0203           add al, byte [rbx]
            0x000006ab      0405           add al, 5
            0x000006ad      7f00           jg 0x6af
            0x000006af      004546         add byte [rbp + 0x46], al
            0x000006b2      495f           pop r15
            0x000006b4      57             push rdi
            0x000006b5      4152           push r10
            0x000006b7      4e5f           pop rdi
            0x000006b9      494e54         push rsp
            0x000006bc      4552           push r10
            0x000006be      52             push rdx
            0x000006bf      55             push rbp
            0x000006c0      50             push rax
            0x000006c1      54             push rsp
            0x000006c2      5f             pop rdi
            0x000006c3      53             push rbx
            0x000006c4      4f55           push r13
            0x000006c6      52             push rdx
            0x000006c7      43455f         pop r15
            0x000006ca      50             push rax
            0x000006cb      454e44494e..   add byte [r8], r8b
            0x000006d3      4546495f       pop r15
            0x000006d7      57             push rdi
            0x000006d8      4152           push r10
            0x000006da      4e5f           pop rdi
            0x000006dc      494e54         push rsp
            0x000006df      4552           push r10
            0x000006e1      52             push rdx
            0x000006e2      55             push rbp
            0x000006e3      50             push rax
            0x000006e4      54             push rsp
            0x000006e5      5f             pop rdi
            0x000006e6      53             push rbx
            0x000006e7      4f55           push r13
            0x000006e9      52             push rdx
            0x000006ea      43455f         pop r15
            0x000006ed      51             push rcx
            0x000006ee      55             push rbp
            0x000006ef      494553         push r11
            0x000006f2      4345440000     add byte [rax], r8b
            0x000006f7      005374         add byte [rbx + 0x74], dl
            0x000006fa      61             invalid
            0x000006fb      7475           je 0x772
            0x000006fd      7320           jae 0x71f
            0x000006ff      436f           outsd dx, dword [rsi]
            0x00000701      6465007fff     add byte gs:[rdi - 1], bh
            0x00000706      0400           add al, 0
            0x00000708      2e2e2e2044..   and byte cs:[rbp + rax*2 + 0x42], al
            0x0000070f      55             push rbp
            0x00000710      47204255       and byte [r10 + 0x55], r8b
            0x00000714      46464552       push r10
            0x00000718      204f56         and byte [rdi + 0x56], cl
            0x0000071b      4552           push r10
            0x0000071d      464c4f57       push r15
            0x00000721      2121           and dword [rcx], esp
            0x00000723      210a           and dword [rdx], ecx
            0x00000725      0000           add byte [rax], al
            0x00000727      008e0897ebdf   add byte [rsi - 0x201468f8], cl
            0x0000072d      cf             iretd
            0x0000072e      c6             invalid
            0x0000072f      49be4bd906..   movabs r14, 0x67860eb2a506d94b
            0x00000739      e78b           out 0x8b, eax
            0x0000073b      fc             cld
            0x0000073c      f1             int1
            0x0000073d      896e4d         mov dword [rsi + 0x4d], ebp
            0x00000740      80996f021e..   sbb byte [rcx - 0x43e1fd91], 0x87
            0x00000747      cc             int3
            0x00000748      72ec           jb 0x736
            0x0000074a      6d             insd dword [rdi], dx
            0x0000074b      f2cf           iretd
            0x0000074d      1926           sbb dword [rsi], esp
            0x0000074f      4eb1ad         mov cl, 0xad
            0x00000752      0f6aef         punpckhdq mm5, mm7
            0x00000755      4f1d474d9590   sbb rax, 0xffffffff90954d47
            0x0000075b      1395da274293   adc edx, dword [rbp - 0x6cbdd826]
            0x00000761      287282         sub byte [rdx - 0x7e], dh
            0x00000764      c217da         ret 0xda17
            0x00000767      a871           test al, 0x71
            0x00000769      51             push rcx
            0x0000076a      34ce           xor al, 0xce
            0x0000076c      0bbad2118e4f   or edi, dword [rdx + 0x4f8e11d2] ; [0x4f8e11d2:4]=-1
            0x00000772      00a0c969723b   add byte [rax + 0x3b7269c9], ah ; [0x3b7269c9:1]=255
            0x00000778      ff5c7a6a       call [rdx + rdi*2 + 0x6a]
            0x0000077c      d9e8           fld1
            0x0000077e      704f           jo 0x7cf
            0x00000780      bada75ab30     mov edx, 0x30ab75da
            0x00000785      25ce14b7bf     and eax, 0xbfb714ce
            0x0000078a      cc             int3
            0x0000078b      f4             hlt
            0x0000078c      e0f6           loopne 0x784
            0x0000078e      fd             std
            0x0000078f      479d           popfq
            0x00000791      d4             invalid
            0x00000792      10a8f150c191   adc byte [rax - 0x6e3eaf0f], ch
            0x00000798      2c77           sub al, 0x77
            0x0000079a      7a10           jp 0x7ac
            0x0000079c      e1d5           loope 0x773
            0x0000079e      d4             invalid
            0x0000079f      119a46009027   adc dword [rdx + 0x27900046], ebx ; [0x27900046:4]=-1
            0x000007a5      3f             invalid
            0x000007a6      c14d772b       ror dword [rbp + 0x77], 0x2b
            0x000007aa      fd             std
            0x000007ab      6ac1           push 0xffffffffffffffc1
            0x000007ad      98             cwde
            0x000007ae      cd4a           int 0x4a
            0x000007b0      a6             cmpsb byte [rsi], byte [rdi]
            0x000007b1      f9             stc
            0x000007b2      8a9439de0f..   mov dl, byte [rcx + rdi - 0x5e4ef022]
            0x000007b9      311b           xor dword [rbx], ebx
            0x000007bb      5b             pop rbx
            0x000007bc      62             invalid
            0x000007bd      95             xchg ebp, eax
            0x000007be      d211           rcl byte [rcx], cl
            0x000007c0      8e             invalid
            0x000007c1      3f             invalid
            0x000007c2      00a0c969723b   add byte [rax + 0x3b7269c9], ah ; [0x3b7269c9:1]=255
            0x000007c8      28b8b2d22608   sub byte [rax + 0x826d2b2], bh ; [0x826d2b2:1]=255
            0x000007ce      a7             cmpsd dword [rsi], dword [rdi]
            0x000007cf      48b3df         mov bl, 0xdf
            0x000007d2      98             cwde
            0x000007d3      3c00           cmp al, 0
            0x000007d5      60             invalid
            0x000007d6      24f0           and al, 0xf0
            0x000007d8      b38f           mov bl, 0x8f
            0x000007da      e87cd74b79     call 0x794bdf5b
            0x000007df      4687a8a8d8..   xchg dword [rax - 0x1a212758], r13d
            0x000007e6      0d2b011257     or eax, 0x5712012b
            0x000007eb      2a6649         sub ah, byte [rsi + 0x49]
            0x000007ee      f6478b86       test byte [rdi - 0x75], 0x86
            0x000007f2      f3             invalid
            0x000007f3      1e             invalid
            0x000007f4      41             invalid
            0x000007f5      f3             invalid
            0x000007f6      2f             invalid
            0x000007f7      104cf239       adc byte [rdx + rsi*8 + 0x39], cl
            0x000007fb      77d7           ja 0x7d4
            0x000007fd      93             xchg ebx, eax
            0x000007fe      d4             invalid
            0x000007ff      119a3a009027   adc dword [rdx + 0x2790003a], ebx ; [0x2790003a:4]=-1
            0x00000805      3f             invalid
            0x00000806      c14d2915       ror dword [rbp + 0x29], 0x15
            0x0000080a      0e             invalid
            0x0000080b      479e           sahf
            0x0000080d      b732           mov bh, 0x32                ; '2'
            0x0000080f      4ea0fe6a15..   movabs al, byte [0x45b2f9296d156afe] ; [0x45b2f9296d156afe:1]=255
            0x00000819      37             invalid
            0x0000081a      a83a           test al, 0x3a
            0x0000081c      54             push rsp
            0x0000081d      94             xchg esp, eax
            0x0000081e      7a4f           jp 0x86f
            0x00000820      a7             cmpsd dword [rsi], dword [rdi]
            0x00000821      c090dbd02f..   rcl byte [rax - 0x54d02f25], 0x8e
            0x00000828      98             cwde
            0x00000829      de20           fisub word [rax]
            0x0000082b      58             pop rax
            0x0000082c      8e             invalid
            0x0000082d      fc             cld
            0x0000082e      0b4ba4         or ecx, dword [rbx - 0x5c]
            0x00000831      b90a940d16     mov ecx, 0x160d940a
            0x00000836      2a7e02         sub bh, byte [rsi + 2]
            0x00000839      010c00         add dword [rax + rax], ecx
            0x0000083c      d04103         rol byte [rcx + 3], 1
            0x0000083f      0300           add eax, dword [rax]
            0x00000841      0000           add byte [rax], al
            0x00000843      007fff         add byte [rdi - 1], bh
            0x00000846      0400           add al, 0
            0x00000848      0201           add al, byte [rcx]
            0x0000084a      0c00           or al, 0
            0x0000084c      d04103         rol byte [rcx + 3], 1
            0x0000084f      0f0000         sldt word [rax]
            0x00000852      0000           add byte [rax], al
            0x00000854      7fff           jg 0x855
            0x00000856      0400           add al, 0
            0x00000858      0000           add byte [rax], al
            0x0000085a      0000           add byte [rax], al
            0x0000085c      0000           add byte [rax], al
            0x0000085e      0000           add byte [rax], al
            0x00000860      0000           add byte [rax], al
            0x00000862      0000           add byte [rax], al
            0x00000864      0000           add byte [rax], al
            0x00000866      0000           add byte [rax], al
            0x00000868      53             push rbx
            0x00000869      004900         add byte [rcx], cl
            0x0000086c      4f005f00       add byte [r15], r11b
            0x00000870      44004500       add byte [rbp], r8b
            0x00000874      56             push rsi
            0x00000875      005f00         add byte [rdi], bl
            0x00000878      53             push rbx
            0x00000879      00540041       add byte [rax + rax + 0x41], dl
            0x0000087d      00540055       add byte [rax + rax + 0x55], dl
            0x00000881      005300         add byte [rbx], dl
            0x00000884      5f             pop rdi
            0x00000885      005600         add byte [rsi], dl
            0x00000888      41005200       add byte [r10], dl
            0x0000088c      0000           add byte [rax], al
            0x0000088e      0000           add byte [rax], al
            0x00000890      49007300       add byte [r11], sil
            0x00000894      61             invalid
            0x00000895      004900         add byte [rcx], cl
            0x00000898      7200           jb 0x89a
            0x0000089a      7100           jno 0x89c
            0x0000089c      4d006100       add byte [r9], r12b
            0x000008a0      7300           jae 0x8a2
            0x000008a2      6b0000         imul eax, dword [rax], 0
            0x000008a5      0000           add byte [rax], al
            0x000008a7      0000           add byte [rax], al
            0x000008a9      0000           add byte [rax], al
            0x000008ab      0000           add byte [rax], al
            0x000008ad      0000           add byte [rax], al
            0x000008af      004889         add byte [rax - 0x77], cl
            0x000008b2      5c             pop rsp
            0x000008b3      2408           and al, 8
            0x000008b5      4889742410     mov qword [rsp + 0x10], rsi
            0x000008ba      57             push rdi
            0x000008bb      4883ec20       sub rsp, 0x20
            0x000008bf      488b4260       mov rax, qword [rdx + 0x60]
            0x000008c3      33f6           xor esi, esi
            0x000008c5      488bda         mov rbx, rdx
            0x000008c8      488bf9         mov rdi, rcx
            0x000008cb      48890d1e08..   mov qword [0x000010f0], rcx ; [0x10f0:8]=0
            0x000008d2      4889151f08..   mov qword [0x000010f8], rdx ; [0x10f8:8]=0
            0x000008d9      4889052008..   mov qword [0x00001100], rax ; [0x1100:8]=0
            0x000008e0      483bc6         cmp rax, rsi
            0x000008e3      742b           je 0x910
            0x000008e5      4c8d055408..   lea r8, [0x00001140]
            0x000008ec      488d0d6df9..   lea rcx, [0x00000260]
            0x000008f3      33d2           xor edx, edx
            0x000008f5      ff9040010000   call qword [rax + 0x140]
            0x000008fb      488b0d3e08..   mov rcx, qword [0x00001140] ; [0x1140:8]=0
            0x00000902      483bc6         cmp rax, rsi
            0x00000905      480f4cce       cmovl rcx, rsi
            0x00000909      48890d3008..   mov qword [0x00001140], rcx ; [0x1140:8]=0
            0x00000910      488bd3         mov rdx, rbx
            0x00000913      488bcf         mov rcx, rdi
            0x00000916      e811000000     call 0x92c
            0x0000091b      488b5c2430     mov rbx, qword [rsp + 0x30]
            0x00000920      488b742438     mov rsi, qword [rsp + 0x38]
            0x00000925      4883c420       add rsp, 0x20
            0x00000929      5f             pop rdi
            0x0000092a      c3             ret
            0x0000092b      cc             int3
            0x0000092c      48895c2408     mov qword [rsp + 8], rbx
            0x00000931      48896c2410     mov qword [rsp + 0x10], rbp
            0x00000936      4889742420     mov qword [rsp + 0x20], rsi
            0x0000093b      57             push rdi
            0x0000093c      4883ec40       sub rsp, 0x40
            0x00000940      4c8bc2         mov r8, rdx
            0x00000943      488bf9         mov rdi, rcx
            0x00000946      e865030000     call 0xcb0
            0x0000094b      488d15eef8..   lea rdx, [0x00000240]
            0x00000952      498bc8         mov rcx, r8
            0x00000955      e886030000     call 0xce0
            0x0000095a      ba60000000     mov edx, 0x60               ; '`'
            0x0000095f      8d72a1         lea esi, [rdx - 0x5f]
            0x00000962      8d6aa2         lea ebp, [rdx - 0x5e]
            0x00000965      488bd8         mov rbx, rax
            0x00000968      4c8bc6         mov r8, rsi
            0x0000096b      8bcd           mov ecx, ebp
            0x0000096d      4889542460     mov qword [rsp + 0x60], rdx
            0x00000972      ff5050         call qword [rax + 0x50]
            0x00000975      488364243000   and qword [rsp + 0x30], 0
            0x0000097b      488d442460     lea rax, [rsp + 0x60]
            0x00000980      4c8bce         mov r9, rsi
            0x00000983      4533c0         xor r8d, r8d
            0x00000986      8bd5           mov edx, ebp
            0x00000988      8bcd           mov ecx, ebp
            0x0000098a      48897c2428     mov qword [rsp + 0x28], rdi
            0x0000098f      4889442420     mov qword [rsp + 0x20], rax
            0x00000994      ff5358         call qword [rbx + 0x58]
            0x00000997      8d5663         lea edx, [rsi + 0x63]
            0x0000099a      4c8bc6         mov r8, rsi
            0x0000099d      8bcd           mov ecx, ebp
            0x0000099f      4889542460     mov qword [rsp + 0x60], rdx
            0x000009a4      ff5350         call qword [rbx + 0x50]
            0x000009a7      488364243000   and qword [rsp + 0x30], 0
            0x000009ad      488d442460     lea rax, [rsp + 0x60]
            0x000009b2      4c8bce         mov r9, rsi
            0x000009b5      4533c0         xor r8d, r8d
            0x000009b8      8bd5           mov edx, ebp
            0x000009ba      8bcd           mov ecx, ebp
            0x000009bc      48897c2428     mov qword [rsp + 0x28], rdi
            0x000009c1      4889442420     mov qword [rsp + 0x20], rax
            0x000009c6      ff5358         call qword [rbx + 0x58]
            0x000009c9      4c8d1da007..   lea r11, [0x00001170]
            0x000009d0      4c8d0d9107..   lea r9, [0x00001168]
            0x000009d7      488d152e00..   lea rdx, [0x00000a0c]
            0x000009de      488d0d33fe..   lea rcx, [0x00000818]
            0x000009e5      4533c0         xor r8d, r8d
            0x000009e8      4c895c2420     mov qword [rsp + 0x20], r11
            0x000009ed      e8c6040000     call 0xeb8
            0x000009f2      488b5c2450     mov rbx, qword [rsp + 0x50]
            0x000009f7      488b6c2458     mov rbp, qword [rsp + 0x58]
            0x000009fc      488b742468     mov rsi, qword [rsp + 0x68]
            0x00000a01      33c0           xor eax, eax
            0x00000a03      4883c440       add rsp, 0x40
            0x00000a07      5f             pop rdi
            0x00000a08      c3             ret
            0x00000a09      cc             int3
            0x00000a0a      cc             int3
            0x00000a0b      cc             int3
            0x00000a0c      488bc4         mov rax, rsp
            0x00000a0f      48895808       mov qword [rax + 8], rbx
            0x00000a13      48896810       mov qword [rax + 0x10], rbp
            0x00000a17      56             push rsi
            0x00000a18      57             push rdi
            0x00000a19      4154           push r12
            0x00000a1b      4883ec70       sub rsp, 0x70
            0x00000a1f      33f6           xor esi, esi
            0x00000a21      488be9         mov rbp, rcx
            0x00000a24      41bc02000000   mov r12d, 2
            0x00000a2a      488d50d0       lea rdx, [rax - 0x30]
            0x00000a2e      33c9           xor ecx, ecx
            0x00000a30      c640d101       mov byte [rax - 0x2f], 1
            0x00000a34      4c8960c0       mov qword [rax - 0x40], r12
            0x00000a38      8970a8         mov dword [rax - 0x58], esi
            0x00000a3b      66897018       mov word [rax + 0x18], si
            0x00000a3f      448860d0       mov byte [rax - 0x30], r12b
            0x00000a43      c640d20c       mov byte [rax - 0x2e], 0xc  ; [0xc:1]=0
            0x00000a47      408870d3       mov byte [rax - 0x2d], sil
            0x00000a4b      c740d4d041..   mov dword [rax - 0x2c], 0xa0341d0 ; [0xa0341d0:4]=-1
            0x00000a52      8970d8         mov dword [rax - 0x28], esi
            0x00000a55      e83e030000     call 0xd98
            0x00000a5a      488d542458     lea rdx, [rsp + 0x58]
            0x00000a5f      33c9           xor ecx, ecx
            0x00000a61      488bd8         mov rbx, rax
            0x00000a64      e82f030000     call 0xd98
            0x00000a69      488d542434     lea rdx, [rsp + 0x34]
            0x00000a6e      488bcb         mov rcx, rbx
            0x00000a71      c644243501     mov byte [rsp + 0x35], 1
            0x00000a76      c644243401     mov byte [rsp + 0x34], 1
            0x00000a7b      c644243606     mov byte [rsp + 0x36], 6
            0x00000a80      488bf8         mov rdi, rax
            0x00000a83      4088742437     mov byte [rsp + 0x37], sil
            0x00000a88      4088742438     mov byte [rsp + 0x38], sil
            0x00000a8d      c64424391f     mov byte [rsp + 0x39], 0x1f ; [0x1f:1]=0
            0x00000a92      e801030000     call 0xd98
            0x00000a97      488d542434     lea rdx, [rsp + 0x34]
            0x00000a9c      488bcf         mov rcx, rdi
            0x00000a9f      488bd8         mov rbx, rax
            0x00000aa2      e8f1020000     call 0xd98
            0x00000aa7      4c8b0da206..   mov r9, qword [0x00001150]  ; [0x1150:8]=0
            0x00000aae      4c8d442440     lea r8, [rsp + 0x40]
            0x00000ab3      8d5610         lea edx, [rsi + 0x10]
            0x00000ab6      8d4e04         lea ecx, [rsi + 4]
            0x00000ab9      488bf8         mov rdi, rax
            0x00000abc      41ff5140       call qword [r9 + 0x40]
            0x00000ac0      488d1571fd..   lea rdx, [0x00000838]
            0x00000ac7      488bcb         mov rcx, rbx
            0x00000aca      e8c9020000     call 0xd98
            0x00000acf      488b4c2440     mov rcx, qword [rsp + 0x40]
            0x00000ad4      488d1575f7..   lea rdx, [0x00000250]
            0x00000adb      488901         mov qword [rcx], rax
            0x00000ade      488b4c2440     mov rcx, qword [rsp + 0x40]
            0x00000ae3      488b056606..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000aea      48897108       mov qword [rcx + 8], rsi
            0x00000aee      4c8b4c2440     mov r9, qword [rsp + 0x40]
            0x00000af3      4533c0         xor r8d, r8d
            0x00000af6      498d4908       lea rcx, [r9 + 8]
            0x00000afa      4d8b09         mov r9, qword [r9]
            0x00000afd      ff9080000000   call qword [rax + 0x80]
            0x00000b03      483bc6         cmp rax, rsi
            0x00000b06      488b054306..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000b0d      7d0d           jge 0xb1c
            0x00000b0f      488b4c2440     mov rcx, qword [rsp + 0x40]
            0x00000b14      ff5048         call qword [rax + 0x48]
            0x00000b17      e97f010000     jmp 0xc9b
            0x00000b1c      ba10000000     mov edx, 0x10
            0x00000b21      4c8d442440     lea r8, [rsp + 0x40]
            0x00000b26      8d4af4         lea ecx, [rdx - 0xc]
            0x00000b29      ff5040         call qword [rax + 0x40]
            0x00000b2c      488d1515fd..   lea rdx, [0x00000848]
            0x00000b33      488bcf         mov rcx, rdi
            0x00000b36      e85d020000     call 0xd98
            0x00000b3b      488b4c2440     mov rcx, qword [rsp + 0x40]
            0x00000b40      488d1509f7..   lea rdx, [0x00000250]
            0x00000b47      488901         mov qword [rcx], rax
            0x00000b4a      488b442440     mov rax, qword [rsp + 0x40]
            0x00000b4f      4533c0         xor r8d, r8d
            0x00000b52      48897008       mov qword [rax + 8], rsi
            0x00000b56      4c8b4c2440     mov r9, qword [rsp + 0x40]
            0x00000b5b      488b05ee05..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000b62      498d4908       lea rcx, [r9 + 8]
            0x00000b66      4d8b09         mov r9, qword [r9]
            0x00000b69      ff9080000000   call qword [rax + 0x80]
            0x00000b6f      483bc6         cmp rax, rsi
            0x00000b72      7d09           jge 0xb7d
            0x00000b74      488b05d505..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000b7b      eb92           jmp 0xb0f
            0x00000b7d      488d8424a8..   lea rax, [rsp + 0xa8]
            0x00000b85      4c8d4c2448     lea r9, [rsp + 0x48]
            0x00000b8a      4c8d442430     lea r8, [rsp + 0x30]
            0x00000b8f      4889442420     mov qword [rsp + 0x20], rax
            0x00000b94      488b05bd05..   mov rax, qword [0x00001158] ; [0x1158:8]=0
            0x00000b9b      488d1586fc..   lea rdx, [0x00000828]
            0x00000ba2      488d0dbffc..   lea rcx, [0x00000868]       ; "SIO_DEV_STATUS_VAR"
            0x00000ba9      ff5048         call qword [rax + 0x48]
            0x00000bac      483bc6         cmp rax, rsi
            0x00000baf      7d0a           jge 0xbbb
            0x00000bb1      458bc4         mov r8d, r12d
            0x00000bb4      4489642430     mov dword [rsp + 0x30], r12d
            0x00000bb9      eb0d           jmp 0xbc8
            0x00000bbb      448b442430     mov r8d, dword [rsp + 0x30]
            0x00000bc0      668bb424a8..   mov si, word [rsp + 0xa8]
            0x00000bc8      4c8b4c2448     mov r9, qword [rsp + 0x48]
            0x00000bcd      b800440000     mov eax, 0x4400
            0x00000bd2      488d154ffc..   lea rdx, [0x00000828]
            0x00000bd9      660bf0         or si, ax
            0x00000bdc      488d8424a8..   lea rax, [rsp + 0xa8]
            0x00000be4      488d0d7dfc..   lea rcx, [0x00000868]       ; "SIO_DEV_STATUS_VAR"
            0x00000beb      4889442420     mov qword [rsp + 0x20], rax
            0x00000bf0      488b056105..   mov rax, qword [0x00001158] ; [0x1158:8]=0
            0x00000bf7      6689b424a8..   mov word [rsp + 0xa8], si
            0x00000bff      ff5058         call qword [rax + 0x58]
            0x00000c02      488d8424a0..   lea rax, [rsp + 0xa0]
            0x00000c0a      4c8d4c2450     lea r9, [rsp + 0x50]
            0x00000c0f      4889442420     mov qword [rsp + 0x20], rax
            0x00000c14      488b053d05..   mov rax, qword [0x00001158] ; [0x1158:8]=0
            0x00000c1b      488d1516fb..   lea rdx, [0x00000738]
            0x00000c22      488d0d67fc..   lea rcx, [0x00000890]       ; "IsaIrqMask"
            0x00000c29      4533c0         xor r8d, r8d
            0x00000c2c      4c89642450     mov qword [rsp + 0x50], r12
            0x00000c31      ff5048         call qword [rax + 0x48]
            0x00000c34      48b90e0000..   movabs rcx, 0x800000000000000e ; '\x0e'
            0x00000c3e      483bc1         cmp rax, rcx
            0x00000c41      7507           jne 0xc4a
            0x00000c43      b805e30000     mov eax, 0xe305
            0x00000c48      eb08           jmp 0xc52
            0x00000c4a      668b8424a0..   mov ax, word [rsp + 0xa0]
            0x00000c52      66410bc4       or ax, r12w
            0x00000c56      488d15dbfa..   lea rdx, [0x00000738]
            0x00000c5d      488d0d2cfc..   lea rcx, [0x00000890]       ; "IsaIrqMask"
            0x00000c64      66898424a0..   mov word [rsp + 0xa0], ax
            0x00000c6c      488d8424a0..   lea rax, [rsp + 0xa0]
            0x00000c74      4d8bcc         mov r9, r12
            0x00000c77      4889442420     mov qword [rsp + 0x20], rax
            0x00000c7c      488b05d504..   mov rax, qword [0x00001158] ; [0x1158:8]=0
            0x00000c83      458bc4         mov r8d, r12d
            0x00000c86      4c89642450     mov qword [rsp + 0x50], r12
            0x00000c8b      ff5058         call qword [rax + 0x58]
            0x00000c8e      488b05bb04..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000c95      488bcd         mov rcx, rbp
            0x00000c98      ff5070         call qword [rax + 0x70]
            0x00000c9b      4c8d5c2470     lea r11, [rsp + 0x70]
            0x00000ca0      498b5b20       mov rbx, qword [r11 + 0x20]
            0x00000ca4      498b6b28       mov rbp, qword [r11 + 0x28]
            0x00000ca8      498be3         mov rsp, r11
            0x00000cab      415c           pop r12
            0x00000cad      5f             pop rdi
            0x00000cae      5e             pop rsi
            0x00000caf      c3             ret
            0x00000cb0      48833d9004..   cmp qword [0x00001148], 0   ; [0x1148:8]=0
            0x00000cb8      7524           jne 0xcde
            0x00000cba      4889158704..   mov qword [0x00001148], rdx ; [0x1148:8]=0
            0x00000cc1      488b4260       mov rax, qword [rdx + 0x60]
            0x00000cc5      48890d9404..   mov qword [0x00001160], rcx ; [0x1160:8]=0
            0x00000ccc      4889057d04..   mov qword [0x00001150], rax ; [0x1150:8]=0
            0x00000cd3      488b4258       mov rax, qword [rdx + 0x58]
            0x00000cd7      4889057a04..   mov qword [0x00001158], rax ; [0x1158:8]=0
            0x00000cde      c3             ret
            0x00000cdf      cc             int3
            0x00000ce0      4053           push rbx
            0x00000ce2      4883ec20       sub rsp, 0x20
            0x00000ce6      488b5968       mov rbx, qword [rcx + 0x68]
            0x00000cea      4c8b5970       mov r11, qword [rcx + 0x70]
            0x00000cee      4885db         test rbx, rbx
            0x00000cf1      7424           je 0xd17
            0x00000cf3      488d1546f5..   lea rdx, [0x00000240]
            0x00000cfa      41b810000000   mov r8d, 0x10
            0x00000d00      498bcb         mov rcx, r11
            0x00000d03      e80c020000     call 0xf14
            0x00000d08      4885c0         test rax, rax
            0x00000d0b      7412           je 0xd1f
            0x00000d0d      4983c318       add r11, 0x18
            0x00000d11      4883eb01       sub rbx, 1
            0x00000d15      75dc           jne 0xcf3
            0x00000d17      33c0           xor eax, eax
            0x00000d19      4883c420       add rsp, 0x20
            0x00000d1d      5b             pop rbx
            0x00000d1e      c3             ret
            0x00000d1f      498b4310       mov rax, qword [r11 + 0x10]
            0x00000d23      ebf4           jmp 0xd19
            0x00000d25      cc             int3
            0x00000d26      cc             int3
            0x00000d27      cc             int3
            0x00000d28      4883ec28       sub rsp, 0x28
            0x00000d2c      488b051d04..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000d33      488364243800   and qword [rsp + 0x38], 0
            0x00000d39      488bd1         mov rdx, rcx
            0x00000d3c      4c8d442438     lea r8, [rsp + 0x38]
            0x00000d41      b904000000     mov ecx, 4
            0x00000d46      ff5040         call qword [rax + 0x40]
            0x00000d49      488b442438     mov rax, qword [rsp + 0x38]
            0x00000d4e      4883c428       add rsp, 0x28
            0x00000d52      c3             ret
            0x00000d53      cc             int3
            0x00000d54      488bd1         mov rdx, rcx
            0x00000d57      4885c9         test rcx, rcx
            0x00000d5a      7503           jne 0xd5f
            0x00000d5c      33c0           xor eax, eax
            0x00000d5e      c3             ret
            0x00000d5f      4533c0         xor r8d, r8d
            0x00000d62      803a7f         cmp byte [rdx], 0x7f        ; '\x7f'
            0x00000d65      7506           jne 0xd6d
            0x00000d67      807a01ff       cmp byte [rdx + 1], 0xff
            0x00000d6b      7421           je 0xd8e
            0x00000d6d      0fb64202       movzx eax, byte [rdx + 2]
            0x00000d71      0fb64a03       movzx ecx, byte [rdx + 3]
            0x00000d75      c1e108         shl ecx, 8
            0x00000d78      03c8           add ecx, eax
            0x00000d7a      803a00         cmp byte [rdx], 0
            0x00000d7d      4863c1         movsxd rax, ecx
            0x00000d80      7411           je 0xd93
            0x00000d82      85c9           test ecx, ecx
            0x00000d84      740d           je 0xd93
            0x00000d86      4c03c0         add r8, rax
            0x00000d89      4803d0         add rdx, rax
            0x00000d8c      ebd4           jmp 0xd62
            0x00000d8e      498d4004       lea rax, [r8 + 4]
            0x00000d92      c3             ret
            0x00000d93      498bc0         mov rax, r8
            0x00000d96      c3             ret
            0x00000d97      cc             int3
            0x00000d98      488bc4         mov rax, rsp
            0x00000d9b      48895808       mov qword [rax + 8], rbx
            0x00000d9f      48896810       mov qword [rax + 0x10], rbp
            0x00000da3      48897018       mov qword [rax + 0x18], rsi
            0x00000da7      48897820       mov qword [rax + 0x20], rdi
            0x00000dab      4154           push r12
            0x00000dad      4883ec20       sub rsp, 0x20
            0x00000db1      488bf2         mov rsi, rdx
            0x00000db4      488bd9         mov rbx, rcx
            0x00000db7      4885d2         test rdx, rdx
            0x00000dba      7516           jne 0xdd2
            0x00000dbc      4885c9         test rcx, rcx
            0x00000dbf      7507           jne 0xdc8
            0x00000dc1      488d0d3cf9..   lea rcx, [0x00000704]
            0x00000dc8      e8a3000000     call 0xe70
            0x00000dcd      e980000000     jmp 0xe52
            0x00000dd2      4885c9         test rcx, rcx
            0x00000dd5      740b           je 0xde2
            0x00000dd7      e878ffffff     call 0xd54
            0x00000ddc      488d78fc       lea rdi, [rax - 4]
            0x00000de0      eb02           jmp 0xde4
            0x00000de2      33ff           xor edi, edi
            0x00000de4      0fb64e03       movzx ecx, byte [rsi + 3]
            0x00000de8      0fb64602       movzx eax, byte [rsi + 2]
            0x00000dec      c1e108         shl ecx, 8
            0x00000def      03c1           add eax, ecx
            0x00000df1      4898           cdqe
            0x00000df3      488d4c3804     lea rcx, [rax + rdi + 4]
            0x00000df8      e82bffffff     call 0xd28
            0x00000dfd      488be8         mov rbp, rax
            0x00000e00      4c8be0         mov r12, rax
            0x00000e03      4885ff         test rdi, rdi
            0x00000e06      7412           je 0xe1a
            0x00000e08      4c8bc7         mov r8, rdi
            0x00000e0b      488bd3         mov rdx, rbx
            0x00000e0e      488bc8         mov rcx, rax
            0x00000e11      e82a020000     call 0x1040
            0x00000e16      4e8d2427       lea r12, [rdi + r12]
            0x00000e1a      0fb65603       movzx edx, byte [rsi + 3]
            0x00000e1e      0fb64e02       movzx ecx, byte [rsi + 2]
            0x00000e22      c1e208         shl edx, 8
            0x00000e25      03d1           add edx, ecx
            0x00000e27      498bcc         mov rcx, r12
            0x00000e2a      4c63c2         movsxd r8, edx
            0x00000e2d      488bd6         mov rdx, rsi
            0x00000e30      e80b020000     call 0x1040
            0x00000e35      440fb65e03     movzx r11d, byte [rsi + 3]
            0x00000e3a      8b05c4f8ffff   mov eax, dword [0x00000704] ; [0x704:4]=0x4ff7f
            0x00000e40      0fb65602       movzx edx, byte [rsi + 2]
            0x00000e44      49c1e308       shl r11, 8
            0x00000e48      4b8d0c1c       lea rcx, [r12 + r11]
            0x00000e4c      89040a         mov dword [rdx + rcx], eax
            0x00000e4f      488bc5         mov rax, rbp
            0x00000e52      488b5c2430     mov rbx, qword [rsp + 0x30]
            0x00000e57      488b6c2438     mov rbp, qword [rsp + 0x38]
            0x00000e5c      488b742440     mov rsi, qword [rsp + 0x40]
            0x00000e61      488b7c2448     mov rdi, qword [rsp + 0x48]
            0x00000e66      4883c420       add rsp, 0x20
            0x00000e6a      415c           pop r12
            0x00000e6c      c3             ret
            0x00000e6d      cc             int3
            0x00000e6e      cc             int3
            0x00000e6f      cc             int3
            0x00000e70      48895c2408     mov qword [rsp + 8], rbx
            0x00000e75      4889742410     mov qword [rsp + 0x10], rsi
            0x00000e7a      57             push rdi
            0x00000e7b      4883ec20       sub rsp, 0x20
            0x00000e7f      488bf1         mov rsi, rcx
            0x00000e82      e8cdfeffff     call 0xd54
            0x00000e87      488bc8         mov rcx, rax
            0x00000e8a      488bd8         mov rbx, rax
            0x00000e8d      e896feffff     call 0xd28
            0x00000e92      4c8bc3         mov r8, rbx
            0x00000e95      488bd6         mov rdx, rsi
            0x00000e98      488bc8         mov rcx, rax
            0x00000e9b      488bf8         mov rdi, rax
            0x00000e9e      e89d010000     call 0x1040
            0x00000ea3      488b5c2430     mov rbx, qword [rsp + 0x30]
            0x00000ea8      488b742438     mov rsi, qword [rsp + 0x38]
            0x00000ead      488bc7         mov rax, rdi
            0x00000eb0      4883c420       add rsp, 0x20
            0x00000eb4      5f             pop rdi
            0x00000eb5      c3             ret
            0x00000eb6      cc             int3
            0x00000eb7      cc             int3
            0x00000eb8      4883ec38       sub rsp, 0x38
            0x00000ebc      488d05a502..   lea rax, [0x00001168]
            0x00000ec3      4533c9         xor r9d, r9d
            0x00000ec6      4c8d053ffb..   lea r8, [0x00000a0c]
            0x00000ecd      4889442420     mov qword [rsp + 0x20], rax
            0x00000ed2      488b057702..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000ed9      418d5108       lea edx, [r9 + 8]
            0x00000edd      b900020000     mov ecx, 0x200
            0x00000ee2      ff5050         call qword [rax + 0x50]
            0x00000ee5      4885c0         test rax, rax
            0x00000ee8      7822           js 0xf0c
            0x00000eea      488b055f02..   mov rax, qword [0x00001150] ; [0x1150:8]=0
            0x00000ef1      488b157002..   mov rdx, qword [0x00001168] ; [0x1168:8]=0
            0x00000ef8      4c8d057102..   lea r8, [0x00001170]
            0x00000eff      488d0d12f9..   lea rcx, [0x00000818]
            0x00000f06      ff90a8000000   call qword [rax + 0xa8]
            0x00000f0c      4883c438       add rsp, 0x38
            0x00000f10      c3             ret
            0x00000f11      cc             int3
            0x00000f12      cc             int3
            0x00000f13      cc             int3
            0x00000f14      4c8bd1         mov r10, rcx
            0x00000f17      488d1522f3..   lea rdx, [0x00000240]
            0x00000f1e      4c8d4910       lea r9, [rcx + 0x10]
            0x00000f22      4183e207       and r10d, 7
            0x00000f26      7428           je 0xf50
            0x00000f28      488bc2         mov rax, rdx
            0x00000f2b      83e007         and eax, 7
            0x00000f2e      4c3bd0         cmp r10, rax
