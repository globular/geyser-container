#!/bin/bash

mv -f Geyser-Standalone.jar Geyser-Standalone.jar.`date +%y%m%d%H%M%S`

wget -O workdir/Geyser-Standalone.jar https://download.geysermc.org/v2/projects/geyser/versions/latest/builds/latest/downloads/standalone
