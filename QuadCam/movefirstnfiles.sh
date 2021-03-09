#!/bin/bash
N=$1
for f in $2/* ; do
	[ $((N--)) -eq 0 ] && break
	mv $f $3;
	done
