
# =============================
# general cmds
# =============================

git config --list
git config --global --list
git config --global --unset property_name
git config --show-origin property_name
git config --show-scope property_name

git config --global core.editor "vim"
git config --show-origin core.editor
git config --global fetch.prune true

git branch --merged
git feteh --prune
git pull --prune
git push origin --delete xyz-branch

# origin vs upstream in forking

# detached HEAD can be on same commit as the branch is.
# https://www.reddit.com/r/git/comments/1nqu887/git_people_spot_the_difference/

# https://x.com/SyedSadiqOnX/status/1971569752599605672
git checkout HEAD^^^^^^

# moves (by force) the main branch to three parents behind HEAD.
git branch -f main HEAD^^^
