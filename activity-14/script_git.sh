#!/bin/sh
set +ex
git clone resource-gist updated-gist
cat $(pwd)/random-numbers/random-number.txt >> $(pwd)/updated-gist/random-number.txt
cd updated-gist
git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"
git add .
git commit -m "Bumped New Random Number!"