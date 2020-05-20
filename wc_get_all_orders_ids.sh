#!/bin/bash

# NOTE set `seq` limit to the total number of orders

for i in $(seq 0 100 50000)
do
  wp wc shop_order list --user=1 --fields=id --per_page=100 --offset=$i >> o.txt
done
