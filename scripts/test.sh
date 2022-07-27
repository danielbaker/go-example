#!/bin/bash

set -euo pipefail

NAME=$(buildkite-agent meta-data get name)

buildkite-agent artifact download output.txt .

EXPECTED_VALUE="Hello, $NAME!"

if [ "$EXPECTED_VALUE" == "$(cat output.txt)" ] ;then
    echo "Correct output detected: $(cat output.txt)"
    exit 0
else
    echo "Unexpected output detected: $(cat output.txt)"
    exit 1
fi

