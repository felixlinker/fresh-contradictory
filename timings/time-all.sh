#!/usr/bin/env bash

tmpfile=$(mktemp)

for path in *.spthy; do
  echo -n "$path;" >> $tmpfile
  gtime -f "%U;%S" -a -o $tmpfile /Users/felixlinker/.local/bin/tamarin-prover --derivcheck-timeout=0 $path > /dev/null 2>&1
done

cat $tmpfile
