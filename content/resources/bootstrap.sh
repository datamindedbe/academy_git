#!/bin/bash

ROOT="$(dirname "$0")/.."
cd $ROOT

for EXERCICE in $(ls resources | grep exercice); do
    echo "-------------------------------"
    echo "... Boostraping $EXERCICE ..."
    echo "-------------------------------"
    mkdir $EXERCICE
    ./resources/$EXERCICE/bootstrap.sh
done
