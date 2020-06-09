#!/bin/bash

# NOTE refunds.txt contains the list of refunded order IDs

for id in $(cat refunds.txt)
do
  wp wc shop_order_refund list $id --user=1 --format=json > $id.json
done
