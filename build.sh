#!/bin/bash

# build ubuntu and omnibus images
docker build -t omnibus-ubuntu -f Dockerfile-Ubuntu .
docker build -t omnibus-centos -f Dockerfile-Centos7 .

# now, run project with
alias omnibus-deb='docker run -it -v $(pwd):/project -v $(pwd)/.cache/ubuntu:/var/cache/omnibus omnibus-ubuntu'
alias omnibus-rpm='docker run -it -v $(pwd):/project -v $(pwd)/.cache/centos:/var/cache/omnibus omnibus-centos'
