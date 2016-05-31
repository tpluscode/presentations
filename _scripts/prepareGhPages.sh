#!/bin/bash -x

rm -rf dist
git clone https://github.com/tpluscode/presentations.git dist
cd dist
git checkout gh-pages

git config --global user.email "tpluscode@users.noreply.github.com"
git config --global user.name "tpluscode"
cd ..

cp -r bower_components/ dist/
cp -r assets/ dist/
