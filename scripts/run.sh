#!/bin/bash

NAME=$(buildkite-agent meta-data get name)

buildkite-agent artifact download dist/hello hello

./hello $NAME