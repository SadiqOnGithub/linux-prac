
# =============================
# how to find who changed which line
# =============================
git blame <file_name>

git blame -L 10,20 filename.txt  # Lines 10-20
git blame -L 10,+5 filename.txt  # 5 lines starting from line 10

git blame commit-hash filename.txt

# =============================
# follow content changes
# =============================
git log -p --follow git_test.txt # Show full diff for each commit include renames
git log -L 4,+5:git_test.txt

git log -S "search_text" --oneline  # When text was added/removed
git log -S "search_text" --oneline -p # follow content changes
git log -S "search_text" --oneline -p git_test.txt # follow changes in file

git log -G "regex_pattern" --oneline  # Using regex







# =============================
# config
# =============================

git config --list
git config --global --list
git config --global --unset property_name
git config --show-origin property_name
git config --show-scope property_name


git config --global fetch.prune true

git branch --merged
git pull --prune

git config --global core.editor "vim"
git config --show-origin core.editor
