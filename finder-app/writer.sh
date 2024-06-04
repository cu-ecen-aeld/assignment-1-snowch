#!/usr/bin/env bash

# set -x 
set -u

FILE_PATH="$1"
CONTENTS="$2"

if [[ -z "$FILE_PATH" ]];
then
    echo "2 parameters required"
    exit 1
fi

if [[ -z "$CONTENTS" ]];
then
    echo "2 parameters required"
    exit 1
fi

FILE_DIR=$(dirname "$FILE_PATH")

mkdir -p "$FILE_DIR"

rm -rf "$FILE_PATH"

echo "$CONTENTS" > "$FILE_PATH" || exit 1;