#!/bin/bash

make build IMAGE_TAG=ubuntu-x86 PLATFORM=linux/amd64
make build IMAGE_TAG=ubuntu-arm PLATFORM=linux/arm64
make build IMAGE_TAG=ubuntu-s390x PLATFORM=linux/s390x

make build IMAGE_TAG=debian-x86 PLATFORM=linux/amd64
make build IMAGE_TAG=debian-arm PLATFORM=linux/arm64
make build IMAGE_TAG=debian-s390x PLATFORM=linux/s390x

