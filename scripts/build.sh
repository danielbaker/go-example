#!/bin/bash

# fail on errors
set -euo pipefail

# build golang executable
go build -o dist/hello ./hello

# give all users write access to allow the 
# buildagent to delete the file at start of next step
chmod -R o+w dist