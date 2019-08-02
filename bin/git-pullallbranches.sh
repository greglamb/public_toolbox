#!/bin/bash
git checkout master
git reset --hard origin/master
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done
git fetch --all
git pull --all
