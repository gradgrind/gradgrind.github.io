#!/bin/bash

###### This uses a locally installed mkdocs (in a virtual environment):
### python3 -m venv mkdocs
### mkdocs/bin/pip install mkdocs-material

( cd src; ../mkdocs/bin/mkdocs build )

rsync -avcn src/site/ . --exclude=.* --exclude=src --exclude=mkdocs --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

read -p 'Continue?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

rsync -avc src/site/ . --exclude=.* --exclude=src --exclude=mkdocs --exclude=sitemap.* --exclude=README.md --exclude=update.sh --delete

git add -A && git commit -m "Update pages"

read -p 'Push to github?: [y for yes] ' ok
[[ "$ok" != y* ]] && exit 1

git push origin master

