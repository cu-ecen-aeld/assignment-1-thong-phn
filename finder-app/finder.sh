#!/bin/bash
# Author: thong-phn

if [ $# -lt 2 ]
then
	echo "searchsr is missing"
	exit 1
else
	if [ $# -lt 1 ]
        then
                echo "filesdir is missing"
                exit 1
        else
                filesdir=$1
        fi
	searchstr=$2
fi

if [ -d "$filesdir" ]
then
	echo "The number of files are  $(find $filesdir -mindepth 1 | wc -l)"
	echo "and the number of matching lines are $(grep $searchstr $filesdir/* | wc -l)"
else
	echo "$filesdir does not represent a directory on the filesystem"
	exit 1
fi

