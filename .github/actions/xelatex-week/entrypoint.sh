#!/bin/sh

# Recommended entrypoint script:
# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#example-entrypointsh-file

cd $1
for f in *.tex; do
  sh -c "xelatex -interaction=nonstopmode $f"
done
