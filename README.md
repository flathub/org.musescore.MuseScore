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

4.1.0-beta added VST3 support on Linux.
vst3sdk is added to the sources.
A patch is necessary for the VST3_PATH as it uses the wrong defaults
from the vst3sdk.

## Wayland

Wayland support is buggy in Qt5. It's disabled.

## Network access

Network access is enabled for the "online" features.

## Filesystem access

It was set that way in the original submission. MuseScore 4 seems to
use the native file dialog though. Needs investigating.
