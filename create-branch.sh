#!/bin/bash

#Fail on first error
set -e

echo "hello world" > "document.md"

git add document.md
git commit -m "document.md"
#Check if branch name is provided
if [ -z "$BRANCH_NAME" ]; then
  echo "Error: BRANCH_NAME is not set."
  exit 1
fi

#Create a new branch
git checkout -b $BRANCH_NAME
git push origin $BRANCH_NAME

