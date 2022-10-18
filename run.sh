#!/usr/bin/env sh

# docker run -v $PWD:/root/host -w /root/mutter -it  mutter_arm64:v1 /bin/bash
docker run -it -v $PWD/run_github:/github/home parse_android_dynparts_arm64:v1 /bin/bash
