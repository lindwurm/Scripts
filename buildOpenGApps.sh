#!/bin/bash

export LANG=C
export ALLOW_MISSING_DEPENDENCIES=true

cd ../opengapps
./download_sources.sh --shallow arm64
make clean
make arm64-27-nano
~/cloud-dl -u out/open_gapps-arm64-8.1-nano-$(date -u '+%Y%m%d')-UNOFFICIAL.zip private/opengapps/
