#!/bin/bash

echo "Creating static web page in $PWD"
docker run -ti --rm -v .:/srv/jekyll jekyll/jekyll jekyll new . --force
