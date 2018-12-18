#!/bin/bash

#pass
#hash

site="http://cracking.bezpecne.site/submit-hash"
api="pfrfjnbps6yxail6kjvflpikvwnoqu"

while read p
do

pass=$(echo $p | cut -d ':' -f2)
hash=$(echo $p | cut -d ':' -f1)

#echo $pass
#echo $hash
#echo $site
#echo $api

./flex.sh "$api" "$pass" "$hash" "$site"

done <$1
