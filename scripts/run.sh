#!/bin/bash

set -euo pipefail

NAME=$(buildkite-agent meta-data get name)

buildkite-agent artifact download dist/hello .

chmod +x ./dist/hello

./dist/hello $NAME