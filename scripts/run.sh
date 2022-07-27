#!/bin/bash

set -euo pipefail

NAME=$(buildkite-agent meta-data get name)

buildkite-agent artifact download dist/hello .

./dist/hello $NAME > output.txt

echo $(cat output.txt)
