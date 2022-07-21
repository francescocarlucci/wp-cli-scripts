#!/bin/bash

# NOTE order_ids.txt contains the list of order IDs

for id in $(cat order_ids.txt)
do
  wp wc shop_order get $id --user=1 --format=json > $id.json
done
