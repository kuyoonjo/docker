#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t kuyoonjo/td-mongo:3.3.3.0-8.0.3 --push .