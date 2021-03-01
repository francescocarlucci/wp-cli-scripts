for i in $(seq 0 100 10000)
do
  wp wc customer list --fields=id,first_name,last_name,email --per_page=100 --offset=$i --user=1 --format=csv >> o.csv
done
