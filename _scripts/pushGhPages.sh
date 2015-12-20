#!/bin/bash -x

cd dist
ls web-components
git add -Af .
if [ "git status --porcelain" ]; then
    git commit -am "pushing presentation built on travis (build number ${TRAVIS_BUILD_NUMBER})";
    git push https://${GH_OAUTH_TOKEN}@github.com/tpluscode/presentations gh-pages;
fi
