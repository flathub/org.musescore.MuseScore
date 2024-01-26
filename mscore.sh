#!/bin/sh

set -oue pipefail

export FLATPAK_ID="${FLATPAK_ID:-org.musescore.Musescore}"
export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"

source_path=~/.local/share/MuseSampler/lib/libMuseSamplerCoreLib.so
destination_path=~/.var/app/org.musescore.MuseScore/data/MuseSampler/lib/libMuseSamplerCoreLib.so

# Check if the source file exists
if [ -e "$source_path" ]; then
    # Check if the symbolic link already exists
    if [ ! -e "$destination_path" ]; then
        mkdir -p ~/.var/app/org.musescore.MuseScore/data/MuseSampler
        mkdir -p ~/.var/app/org.musescore.MuseScore/data/MuseSampler/lib
        ln -s "$source_path" "$destination_path"
        echo "Symbolic link created successfully."
    else
        echo "Symbolic link already exists. No action taken."
    fi
else
    echo "MuseSampler not Found, please install some sound fonts."
fi

/app/mscore/bin/mscore4portable
