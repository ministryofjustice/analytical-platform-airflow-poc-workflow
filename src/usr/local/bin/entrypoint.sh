#!/usr/bin/env bash

echo "Hello from the entrypoint script!"

date

cat /etc/os-release

if command -v nvidia-smi &> /dev/null
then
    echo "nvidia-smi exists"
    nvidia-smi
else
    echo "nvidia-smi does not exist"
fi
