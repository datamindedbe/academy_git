#!/bin/bash

ROOT="$(dirname "$0")/../.."
cd "$ROOT/exercise_6"

RESOURCES_EX2="../resources/exercise_2"
RESOURCES_EX6="../resources/exercise_6"

git init

cp -r $RESOURCES_EX6/commit1/* .
git add .
git commit -am "Initial commit. v1 of the server."

cp $RESOURCES_EX6/README.md .
git add .
git commit -am "Added the README for students"
