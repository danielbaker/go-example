#!/bin/bash

# fail on errors
set -euo pipefail

# retrieve name from buildkite metadata
NAME=$(buildkite-agent meta-data get name)

# download binary from buildkite artifact repo
buildkite-agent artifact download dist/hello .

# save execuatable output to file
./dist/hello $NAME > output.txt

# echo file contents to console
echo $(cat output.txt)
