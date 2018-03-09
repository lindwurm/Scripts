#!/bin/bash

cd ~/android/Tusky/
git pull
APKTIME=$(date '+%Y%m%d_%H%M%S')
./gradlew assembleDebug
cd app/build/outputs/apk
COMMITHASH=$(git ls-remote https://github.com/Vavassor/Tusky.git HEAD | head -c 7)
NEWAPKNAME="Tusky-debug_${APKTIME}_${COMMITHASH}"
mv app-fdroid-debug.apk ${NEWAPKNAME}.apk
cloud-dl -u ${NEWAPKNAME}.apk public/apk/Tusky/
