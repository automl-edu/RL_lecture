#!/bin/sh

# Recommended entrypoint script:
# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#example-entrypointsh-file

cd $1
ls -l
sh -c "for f in *.tex ; do echo $f ; done"
sh -c "for f in *.tex ; do xelatex -interaction=nonstopmode $f ; done"
