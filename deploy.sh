#!/usr/bin/env bash

err() {
  echo "ERROR: $@" >&2
  exit 1
}

ENVIRONMENT="$1"
BUILD_DIR="."

echo "* initilizing environment"

if [ -n "$TRAVIS_BUILD_DIR" ]; then
  BUILD_DIR="$TRAVIS_BUILD_DIR"
fi

BUNDLE_PATH="$BUILD_DIR/public/js/bundle.js"

if [ ! -f "$BUNDLE_PATH" ]; then
  err "file \`$BUNDLE_PATH\` does not exist"
else
  echo "file \`$BUNDLE_PATH\` does exist!"
fi


echo "$BASE_URL"
