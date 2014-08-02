#!/bin/bash

command -v crunch > /dev/null 2>&1 || { echo "I require crunch but it's not installed.  Aborting." >&2; exit 1; }


# Custom patternbased lists
p1() {
	if [ -e $PWD/START ]; then
		crunch 10 10  ABCDEFGHIJKLMNOPQRSTUVZ0123456789 -o START -b 1gb -z bzip2 -r
	else
		crunch 10 10  ABCDEFGHIJKLMNOPQRSTUVZ0123456789 -o START -b 1gb -z bzip2
    fi
}

"$@"
