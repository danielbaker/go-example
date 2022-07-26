#!/bin/bash

set -euo pipefail

go build -o dist/hello ./hello

chmod -R o+w dist