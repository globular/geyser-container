#!/bin/bash

# make the workdir directory
if ! test -d workdir; then
        mkdir workdir
fi

wget -O workdir/Geyser-Standalone.jar https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/standalone

docker build -f containerfiles/containerfile.run -t geyser-run .
