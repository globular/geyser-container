#!/bin/bash

docker run --rm -p 19132:19132/udp -d -ti --name geyser-run -v $(pwd)/workdir:/geyser/data geyser-run /geyser/run.sh
