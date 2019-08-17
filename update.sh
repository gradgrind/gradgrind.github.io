#!/bin/bash

( cd src; mkdocs build )
rsync -avcn src/site/ . --exclude=.* --exclude=src --exclude=README.md --exclude=update.sh --delete
#rsync -avc src/site/ . --exclude=.* --exclude=src --exclude=README.md --exclude=update.sh --delete
git add -A && git commit -m "Update pages"
git push origin master

