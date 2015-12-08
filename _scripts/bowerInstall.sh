#!/bin/bash -x

find . -name "bower.json" -not -path "*node_modules*" -exec sh -c 'bower install --config.cwd=$(dirname {})' \;
