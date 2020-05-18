#!/bin/bash

for i in $(seq 0 100 10000)
do
  wp wc shop_order list --user=1 --fields=billing --per_page=100 --offset=$i >> d.txt
done

cat d.txt | grep email | cut -d '"' -f 40 | sort -u > o.txt
