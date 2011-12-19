#!/bin/bash

if [ -d 'files' ]; then
	echo 'Creating new symlinks in your home directory...'
	ls -1d files files/.* | while read f; do
  		[ "$f" == 'files/.' ] ||
  		[ "$f" == 'files/..' ] ||
  		[ "$f" == 'files/.git' ] ||
		ln -vsf "$(pwd)/$f" ~
	done
else
	echo "Failed to create symlinks as necessary files aren't present...exiting!"
fi
