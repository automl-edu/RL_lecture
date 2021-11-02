#!/bin/sh

# Recommended entrypoint script:
# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#example-entrypointsh-file

cd $1
sh -c "xelatex -interaction=nonstopmode $2"