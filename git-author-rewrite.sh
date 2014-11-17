#!/bin/sh

git filter-branch --env-filter '

OLD_EMAIL="randomname@blha303.com.au"
CORRECT_NAME="blha303"
CORRECT_EMAIL="stevensmith.ome@gmail.com"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
