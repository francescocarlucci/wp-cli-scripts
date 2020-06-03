#!/bin/bash

# NOTE order_delete_ids.txt contains the list of order IDs to delete

for id in $(cat order_delete_ids.txt)
do
  wp wc shop_order delete $id $id --user=1 --force --porcelain
done
