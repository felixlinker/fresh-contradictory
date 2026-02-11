file=./timings/temp.csv
touch $file
for i in {0..5}; do
  ./time-all.sh >> $file
done
