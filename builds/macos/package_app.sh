#!/bin/bash
# Packages EasyRPG-Player as a macOS .app bundle

BUNDLE_NAME="Player.app"
EASYRPG_BINARY="easyrpg-player"

mkdir -p "$BUNDLE_NAME/Contents/MacOS"
mkdir -p "$BUNDLE_NAME/Contents/Resources"
cp "resources/osx/Info.plist" "$BUNDLE_NAME/Contents"
cp "resources/osx/Player.icns" "$BUNDLE_NAME/Contents/Resources"
cp "$EASYRPG_BINARY" "$BUNDLE_NAME/Contents/MacOS/EasyRPG Player"

# TODO: codesign

# TODO: app notarization