#! /bin/bash

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    echo "$0 <serial> <antenna>"
    exit 1
fi

serial=$1
antenna=$2

for pol in h v
do
    ln -s rx.l.$serial.$pol.csv $antenna.coupler.$pol.csv
done

# -fin-
