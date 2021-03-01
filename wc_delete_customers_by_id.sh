#!/bin/bash

# NOTE customer_delete_ids.txt contains the list of order IDs to delete

for id in $(cat customer_delete_ids.txt)
do
  wp wc customer delete $id --user=1 --force=1 --porcelain
done
