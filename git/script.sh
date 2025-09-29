#!/bin/bash

# =============================
# general cmds
# =============================

git config --list                                    # list all config settings
git config --global --list                           # list global config only
git config --global --unset property_name           # remove global property
git config --show-origin property_name              # show config file location
git config --show-scope property_name               # show config scope

git config --global core.editor "vim"               # set default editor
git config --show-origin core.editor                # show editor config source
git config --global fetch.prune true                # auto-prune on fetch

git branch --merged                                  # list merged branches
git fetch --prune                                    # remove stale remote branches
git pull --prune                                     # pull and prune
git push origin --delete xyz-branch                  # delete remote branch

# origin vs upstream in forking

# detached HEAD can be on same commit as the branch is.
# https://www.reddit.com/r/git/comments/1nqu887/git_people_spot_the_difference/

# https://x.com/SyedSadiqOnX/status/1971569752599605672
git checkout HEAD^^^^^^                              # go back 6 commits

# moves (by force) the main branch to three parents behind HEAD.
git branch -f main HEAD^^^                           # force move branch pointer

# chaining modifiers
git checkout HEAD~^2~2                               # complex navigation example


# create new branch with remote tracking
git checkout -b new-branch origin/main
# another way for doing same
git branch -u origin/new-branch new-branch
# if you already checked out the branch then no need to specify branch name
git branch -u origin/new-branch
