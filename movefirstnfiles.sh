#!/bin/bash

#Move first n files from A to B

#Use like: 
#	   bash movefirstnfiles.sh 300 path1 path2
#300 was n. But of course n≠300 in general.

#Tip: Do not end path1 or path2 with '/'. Eg. do QuadCam/ChromeDL but not QuadCam/ChromeDL/

N=$1
for f in $2/* ; do
	[ $((N--)) -eq 0 ] && break
	mv $f $3;
	done
