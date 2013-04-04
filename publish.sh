#!/usr/bin/env bash

# Config
OUTPUT=/home/alex/www/alex.henriet.eu/output
ARCHIVE=/tmp/site.tgz

# Script
DIR=`pwd`
cd $OUTPUT
rm -rf archives.html categories.html tags.html pages/cv.html feeds/
tar -czf $ARCHIVE *
echo -n 'user: ' && read USER
scp $ARCHIVE $USER@vks-proxy:/home/$USER/www/alex.henriet.eu/
ssh $USER@vks-proxy "cd /home/$USER/www/alex.henriet.eu && tar -zxf site.tgz && rm site.tgz"
cd $DIR
