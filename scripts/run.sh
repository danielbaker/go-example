#!/bin/bash

set -euxo pipefail

NAME=$(buildkite-agent meta-data get name)

buildkite-agent artifact download dist/hello .

./dist/hello $NAME > output.txt

echo output.txt
