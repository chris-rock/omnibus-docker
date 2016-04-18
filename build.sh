#!/bin/bash

# build ubuntu and omnibus images
docker build -t omnibus-ubuntu -f Dockerfile-Ubuntu .
docker build -t omnibus-centos -f Dockerfile-Centos7 .
