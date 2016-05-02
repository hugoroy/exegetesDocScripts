#!/bin/zsh

sed 's/<<~/« /g' | sed 's/~>>/ »/g' | sed '#\{"t":"Space","c":[]\},\{"t":"Str","c":"»"\}#\{"t":"Str","c":" »"\}#g' 

