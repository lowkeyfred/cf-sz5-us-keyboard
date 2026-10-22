#!/usr/bin/env python3
"""Shared path/env resolution for the CF-SZ5 EC toolchain.

Nothing here is machine-specific: all firmware images, capsules and updaters
live in a "work directory" that you populate with files extracted from your
own machine / Panasonic downloads (none of them are redistributable).

Environment overrides:
  SZ5_WORK     work directory holding firmware images + build outputs
               (default: <repo>/work ; locally we point it at analysis/)
  SZ5_UPDATER  path to the pristine Panasonic EcUpdate exe
               (default: $SZ5_WORK/EcUpdate_SZ5M123_V100L19.exe)

Importing this module also puts the scripts/ directory on sys.path so the
toolchain scripts can import each other regardless of the current directory.
"""
import os
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))          # scripts/
REPO = os.path.dirname(ROOT)                               # repository root
WORK = os.path.abspath(os.environ.get('SZ5_WORK', os.path.join(REPO, 'work')))
UPDATER = os.path.abspath(os.environ.get(
    'SZ5_UPDATER', os.path.join(WORK, 'EcUpdate_SZ5M123_V100L19.exe')))

if ROOT not in sys.path:
    sys.path.insert(0, ROOT)


def w(name):
    """Resolve *name* inside the work directory."""
    return os.path.join(WORK, name)
