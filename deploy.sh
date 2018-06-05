#!/bin/bash

set -o errexit -o nounset

echo "SUCCESS"
git clone --depth=50 --branch=master https://github.com/DasKeyboard/DasKeyboard.github.io.git DasKeyboard/DasKeyboard.github.io
git fetch
# git checkout master
git branch

# if [ "$TRAVIS_BRANCH" != "master" ]
# then
#   echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
#   exit 0
# fi

# rev=$(git rev-parse --short HEAD)

# cd stage/_book

# git init
# git config user.name "Steve Klabnik"
# git config user.email "steve@steveklabnik.com"

# git remote add upstream "https://$GH_TOKEN@github.com/rust-lang/rust-by-example.git"
# git fetch upstream
# git reset upstream/gh-pages

# echo "rustbyexample.com" > CNAME

# touch .

# git add -A .
# git commit -m "rebuild pages at ${rev}"
# git push -q upstream HEAD:gh-pages