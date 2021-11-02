#!/bin/sh

# Recommended entrypoint script:
# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#example-entrypointsh-file

sh -c "xelatex -interaction=nonstopmode -include-directory=$1 $1/$2"