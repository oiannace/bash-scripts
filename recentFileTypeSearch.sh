#!/bin/bash

if [ $2 = "d" ]; then
	find $1 -type $2 -mtime -$3 -ls | cut -b 81-
fi

if [ $2 = "f" ]; then
	find $1 -type $2 -mtime -$3 -ls | cut -b 81- | grep $4
fi
