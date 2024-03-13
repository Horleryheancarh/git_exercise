#!/bin/bash

COMMIT_MESSAGE=$(git show --no-patch --format=%B HEAD)
PATTERN="^(feature|bugfix|hotfix)\/[A-Z]+-[0-9]+\:.*$"

echo $COMMIT_MESSAGE

if [[ ! $COMMIT_MESSAGE =~ $PATTERN ]]; then
    echo "Commit message does not follow naming convention. Example: feature/PRJ-123: Add new feature"
    exit 1
fi
