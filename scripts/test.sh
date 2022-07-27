#!/bin/bash

# fail on errors
set -euo pipefail

# retrieve expected name from buildkite metadata
NAME=$(buildkite-agent meta-data get name)

# download command output
buildkite-agent artifact download output.txt .

EXPECTED_VALUE="Hello, $NAME!"

if [ "$EXPECTED_VALUE" == "$(cat output.txt)" ] ;then
    echo "Correct output detected: $(cat output.txt)"
    exit 0
else
    echo "Unexpected output detected: $(cat output.txt)"
    exit 1
fi

