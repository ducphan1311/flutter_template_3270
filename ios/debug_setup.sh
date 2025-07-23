#!/bin/bash
set -e

echo "=== Current directory ==="
pwd
ls -la

echo "=== Flutter clean and build ==="
cd ..
flutter clean
flutter pub get
flutter build ios --release --no-codesign

echo "=== Back to iOS directory ==="
cd ios
pwd
ls -la

echo "=== Pod install ==="
pod install

echo "=== Check workspace ==="
ls -la Runner.xcworkspace

echo "=== Ready for Fastlane ==="
