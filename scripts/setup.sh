#!/bin/bash

# Create folders
mkdir ~/Projects

# Clone github repos
xargs -n1 git -C ~/Projects/ clone < ../gh-repos.txt