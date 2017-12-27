#!/usr/bin/env bash

# Config
OUTPUT=/home/alex/www/alex.henriet.eu/output
ARCHIVE=/tmp/site.tar.bz2

# Script
DIR=`pwd`
cd $OUTPUT
rm -rf archives.html categories.html tags.html pages/cv.html feeds/
tar -cjf $ARCHIVE *
echo -n 'user: ' && read USER
scp $ARCHIVE $USER@ks2-proxy:/home/$USER/www/alex.henriet.eu/
ssh $USER@ks2-proxy "cd /home/$USER/www/alex.henriet.eu && tar -jxf site.tar.bz2 && rm site.tar.bz2"
cd $DIR
