#!/bin/bash

BRANCH_NAME=$(git symbolic-ref --short HEAD)
PATTERN="^(feature|bugfix|hotfix)\/[A-Z]+-[0-9]+\/.*$"

echo $BRANCH_NAME

if [[ ! $BRANCH_NAME =~ $PATTERN ]]; then
    echo "Branch name does not follow naming convention. Example: feature/PROJ-123/add-new-feature"
    exit 1
fi
