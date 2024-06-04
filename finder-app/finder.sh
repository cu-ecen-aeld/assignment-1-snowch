#!/usr/bin/env bash

# set -x 
set -u

SEARCH_PATH="$1"
SEARCH_STRING="$2"

if [ "$#" -ne 2 ]; then
    echo "2 parameters required"
    exit 1
fi

if [[ -z "$SEARCH_PATH" ]];
then
    echo "2 parameters required"
    exit 1
fi

if [[ -z "$SEARCH_STRING" ]];
then
    echo "2 parameters required"
    exit 1
fi

[ -d "$SEARCH_PATH" ] || { echo "$SEARCH_PATH Directory not found"; exit 1; }

NUM_FILES=$(grep -rls "$SEARCH_STRING" $SEARCH_PATH | wc -l)
NUM_LINES=$(grep -r "$SEARCH_STRING" $SEARCH_PATH | wc -l)

echo "The number of files are ${NUM_FILES} and the number of matching lines are ${NUM_LINES}"