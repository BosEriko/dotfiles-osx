#!/usr/bin/env sh

# Make the directories for Personal/Work
mkdir -p ~/Documents/Codes/Work ~/Documents/Codes/Personal
terminal-notifier -title 'Installing' -message 'Work and Personal folder have been created.'

# Make the directories for Mega
mkdir -p ~/Music/Mega\ Music ~/Movies/Mega\ Movies
terminal-notifier -title 'Installing' -message 'Mega folders have been created.'

# Make the directory for Local Movies
mkdir -p ~/Movies/Local
terminal-notifier -title 'Installing' -message 'Local Movies folder has been created.'

# Make the directory for YouTube videos
mkdir -p ~/Movies/YouTube
terminal-notifier -title 'Installing' -message 'YouTube videos folder has been created.'
