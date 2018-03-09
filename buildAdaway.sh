#!/bin/bash

cd ~/android/AdAway
git pull
cd AdAway
ndk-build
cd ../
./gradlew renameExecutables
APKTIME=$(date '+%Y%m%d_%H%M%S')
./gradlew build
cd AdAway/build/outputs/apk/debug
COMMITHASH=$(git ls-remote https://github.com/AdAway/AdAway.git HEAD | head -c 7)
NEWAPKNAME="AdAway-debug_${APKTIME}_${COMMITHASH}"
mv AdAway-debug.apk ${NEWAPKNAME}.apk
cloud-dl -u ${NEWAPKNAME}.apk public/apk/AdAway/

