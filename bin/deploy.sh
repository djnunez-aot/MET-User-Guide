#!/bin/bash

set -e

JEKYLL_ENV=production bundle exec jekyll build

git checkout gh-pages
rm -rf *
mv _site/* .
rm -r _site/
git add .
git commit -m "Site updated at $(date)"
git push origin gh-pages
git checkout main