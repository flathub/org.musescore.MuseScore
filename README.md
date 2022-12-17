Packaging notes
===============

Some packaging notes. Please keep up to date.

## beta

The beta branch is used for pre-release and testing.

## Crashpad

Crashpad is disabled because it comes as a binary linked against an
older openSSL. (it's not available on aarch64 anyway)

Telemetry is disabled too.

## VST3 plugin support

VST3 isn't supported on Linux by upstream. See issue:
https://github.com/musescore/MuseScore/issues/11689

## Wayland

Wayland support is buggy in Qt5. It's disabled.

## Network access

Network access is enabled for the "online" features.

## Filesystem access

It was set that way in the original submission. MuseScore 4 seems to
use the native file dialog though. Needs investigating.
