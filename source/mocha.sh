#!/bin/sh
basedir=`dirname "$0"`

case `uname` in
    *CYGWIN*) basedir=`cygpath -w "$basedir"`;;
esac

if [ -x "$basedir/node" ]; then
  "$basedir/node"  "$basedir/node_modules/mocha/bin/mocha" "$@"
  ret=$?
else 
  node  "$basedir/node_modules/mocha/bin/mocha" "$@"
  ret=$?
fi
exit $ret
