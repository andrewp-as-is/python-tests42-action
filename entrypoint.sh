#!/bin/sh

( set -x; python -m pip install --upgrade pip ) || exit
[ -e requirements.txt ] && { ( set -x; pip install -r requirements.txt ) || exit; }
( set -x; python setup.py install ) || exit
( set -x; pip install tests42 ) || exit

! [ -e tests ] && echo "SKIP: tests not exists" && exit
! [ -d tests ] && echo "SKIP: tests not a directory" && exit
( set -x; tests42 tests )
