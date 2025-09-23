
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
