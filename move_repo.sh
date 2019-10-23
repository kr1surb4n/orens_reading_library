#!/bin/bash

FOLDER=$1

DEST_NAME=`basename $FOLDER`
# get the base name of the folder $1


# enter the given folder in $1
cd $FOLDER
REMOTE_URL=`git remote -v | awk '{print $2}' | head -1`
cd ..
rm -fr $FOLDER
git submodule add $REMOTE_URL $DEST_NAME
# get the remote url
# move folder up
# remove folder
# gsa <repo> <basename>

