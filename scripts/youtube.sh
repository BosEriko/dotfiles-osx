#!/bin/bash

if [ -z $1 ]; then
  echo "YouTube URL:  "
  read query
else
  query=$1
fi

mkdir -p ~/Movies/YouTube

youtube-dl "$query" -o "~/Movies/YouTube/%(title)s-%(id)s.%(ext)s"
