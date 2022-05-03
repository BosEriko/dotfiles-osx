#!/bin/bash

if [ -z $1 ]; then
  echo "YouTube URL:  "
  read query
else
  query=$1
fi

youtube-dl "$query" -o ~/Movies
