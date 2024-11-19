#!/bin/bash

# Configure Git identity
git config --global user.name "Jaakko252525"
git config --global user.email "jaaheimo@gmail.com"

# Start Jenkins
exec /usr/local/bin/jenkins.sh "$@"
