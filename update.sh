#!/bin/bash

( cd src; mkdocs build )

rsync -avcn src/site/ . --exclude=.* --exclude=src --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

read -p 'Continue?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

rsync -avc src/site/ . --exclude=.* --exclude=src --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

git add -A && git commit -m "Update pages"

read -p 'Push to github?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

git push origin master

