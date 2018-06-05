
#!/bin/sh

set -e # quit on first error.

git checkout master
git pull origin master
git merge gh-pages
echo push into master
git push origin master

echo "Done"