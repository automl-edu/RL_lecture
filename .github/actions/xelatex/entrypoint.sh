#!/bin/sh

# Recommended entrypoint script:
# https://docs.github.com/en/actions/creating-actions/dockerfile-support-for-github-actions#example-entrypointsh-file

cd $1
if [$3 -eq "handout"]; then
    sh -c "xelatex -interaction=nonstopmode -jobname=${$2.*}-handout \"\def\ishandout \input{$2}\"" ;
  else
    sh -c "xelatex -interaction=nonstopmode $2" ;
  fi;