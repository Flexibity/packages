#!/bin/sh

LOCKFILE=/var/lock/google.lock

if [ ! -e $LOCKFILE ]; then
	trap "rm -f $LOCKFILE; exit" INT TERM EXIT
	touch $LOCKFILE
	/bin/sh -c "$*"
	rm $LOCKFILE
	trap - INT TERM EXIT
fi

