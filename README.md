Packaging notes
===============

Some packaging notes. Please keep up to date.

## beta

The beta branch is used for pre-release and testing.

## Telemetry

Telemetry is disabled too.

## VST3 plugin support

There is no VST support on Linux. This is a MuseScore problem and it
seem to not be a priority as releases pass and nothing changes.

See upstream bugs:

- https://github.com/musescore/MuseScore/issues/11689
- https://github.com/musescore/MuseScore/issues/16799

> The plan is to implement this for 4.1.

## Wayland

Wayland support is buggy in Qt. It's disabled. Also if VST support
ever comes it won't even be possible either.

## Network access

Network access is enabled for the "online" features.

## Filesystem access

It was set that way in the original submission. MuseScore 4 seems to
use the native file dialog though. Needs investigating.
