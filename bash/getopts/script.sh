#!/bin/bash

while getopts "f:v" flag; do
  case "$flag" in
    f) filename=$OPTARG ;;   # store the value after -f
    v) verbose=true ;;
  esac
done

echo "Filename: $filename"
echo "Verbose mode: $verbose"
