#!/bin/bash

docker pull kopia/kopia:latest
docker run -e KOPIA_PASSWORD \
    -v /path/to/config/dir:/app/config \
    -v /path/to/cache/dir:/app/cache \
    -v /path/to/logs/dir:/app/logs \
    -v /path/to/repository/dir:/repository \
    -v /path/to/tmp/dir:/tmp:shared \
