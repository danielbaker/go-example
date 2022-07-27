# Buildkite example pipeline

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example Buildkite pipeline for building & running a golang program.

The pipeline demonstrates the usage of the docker plugin to build the golang binary, a block step to collect information from the user, and prints the binary output to the console which is visible in the build logs.


## Prerequisites
See the full [Getting Started Guide](https://buildkite.com/docs/tutorials/getting-started) for step-by-step instructions on how to signup for buildkite and setup your first agent.


## Building the project in your local workspace

```
$ go build -o dist/hello ./hello
```

A simple application that takes a command line argument, and then returns it to you in a string:

```
$ chmod +x dist/hello
$ ./dist/hello John Doe
```

The above will return 'Hello, John Doe!'

## License
See LICENSE (Apache License)

