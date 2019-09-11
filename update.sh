#!/bin/bash

###### Requirements:
### mkdocs with material theme, e.g.:
###   pip3 install --user mkdocs-material
### This pulls in a range of other packets, including pymdown-extensions, which
### is necessary for mathjax support (among other things).
### For syncing to the site's root directory, rsync is needed.
### For syncing to github, git is of course necessary.

( cd src; mkdocs build )

# Dry run, to check that nothing silly is about to be done.
rsync -avcn src/site/ . --exclude=.* --exclude=src --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

read -p 'Continue?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

rsync -avc src/site/ . --exclude=.* --exclude=src --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

git add -A && git commit -m "Update pages"

read -p 'Push to github?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

git push origin master

