#!/bin/bash

# This script is meant to be used with the command 'datalad run'

# git-annex doesn't allow to explicitely set the output directory in the
# case of torrents. Trick git-annex by creating a symlink to the desired
# output directory
mkdir -p icentia11k/
git-annex add -c annex.largefiles=anything icentia11k/
ln -s icentia11k/ af04abfe9a3c96b30e5dd029eb185e19a7055272.torrent

git-annex addurl -c annex.largefiles=anything --pathdepth -1 \
		 https://academictorrents.com/download/af04abfe9a3c96b30e5dd029eb185e19a7055272.torrent

md5sum -c md5sums
