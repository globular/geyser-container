#!/bin/bash

echo 'geyser shutdown' | socat EXEC:"docker attach geyser-run",pty STDIN
