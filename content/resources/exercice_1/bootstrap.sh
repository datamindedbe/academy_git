#!/bin/bash

ROOT="$(dirname "$0")/../.."
cd "$ROOT/exercice_1"

RESOURCES="../resources/exercice_1"

cp $RESOURCES/* .
rm bootstrap.sh