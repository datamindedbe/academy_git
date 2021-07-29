#!/bin/bash

ROOT="$(dirname "$0")/.."
cd $ROOT

for EXERCICE in $(ls | grep exercice); do
    rm -rf $EXERCICE
done