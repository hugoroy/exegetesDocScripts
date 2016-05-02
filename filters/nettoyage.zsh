#!/bin/zsh

sed 's/<<~/« /g' | sed 's/~>>/ »/g' | sed 's/« /« /g' | sed 's/ »/ »/g'

