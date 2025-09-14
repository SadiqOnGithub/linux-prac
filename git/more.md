
## Git Blame Basics

`git blame` shows you who last modified each line of a file and when:

```bash
git blame filename.txt
```

The output shows:
- **Commit hash** (first 8 characters)
- **Author name**
- **Timestamp**
- **Line number**
- **Line content**

Example output:
```
a1b2c3d4 (John Doe    2024-01-15 10:30:22 +0000  1) function calculateTotal() {
e5f6g7h8 (Jane Smith  2024-01-20 14:45:33 +0000  2)   return price * quantity;
a1b2c3d4 (John Doe    2024-01-15 10:30:22 +0000  3) }
```

## Useful Git Blame Options

**Show line numbers:**
```bash
git blame -n filename.txt
```

**Blame specific lines:**
```bash
git blame -L 10,20 filename.txt  # Lines 10-20
git blame -L 10,+5 filename.txt  # 5 lines starting from line 10
```

**Ignore whitespace changes:**
```bash
git blame -w filename.txt
```

**Show email addresses:**
```bash
git blame -e filename.txt
```

## Advanced Tracing Techniques

### 1. Following File Renames
```bash
git blame --follow filename.txt  # Traces through file renames
```

### 2. Blame at Specific Commit
```bash
git blame commit-hash filename.txt
git blame HEAD~3 filename.txt  # 3 commits ago
```

### 3. Git Log for Line/Function History
Track changes to specific lines:
```bash
git log -L 10,15:filename.txt  # History of lines 10-15
git log -L :functionName:filename.py  # History of a function
```

### 4. Pickaxe Search (Find When Text Was Added/Removed)
```bash
git log -S "search_text" --oneline  # When text was added/removed
git log -G "regex_pattern" --oneline  # Using regex
```

### 5. Git Log with Patches
```bash
git log -p filename.txt  # Show full diff for each commit
git log --follow -p filename.txt  # Include renames
```

## Practical Workflow

**Step 1: Find the problematic line**
```bash
git blame problematic_file.py
```

**Step 2: Get more details about the commit**
```bash
git show commit-hash
```

**Step 3: See the full context of changes**
```bash
git log -p -1 commit-hash
```

**Step 4: Check if the line existed before**
```bash
git blame commit-hash^ problematic_file.py  # Previous commit
```

## Pro Tips

1. **Use `git blame` in your editor** - Most IDEs have Git blame integration
2. **Combine with `git show`** - After finding a commit, use `git show` for full context
3. **Check merge commits** - Sometimes blame points to merge commits; check the actual changes:
   ```bash
   git show --first-parent commit-hash
   ```
4. **Use `git log --graph`** for visual branch history when tracing complex changes

## Common Use Cases

**Debug when a bug was introduced:**
```bash
git blame buggy_file.py | grep "problematic_line"
git show commit-hash
```

**Find who to ask about code:**
```bash
git blame -e complex_file.py  # Shows email addresses
```

**Track feature development:**
```bash
git log -L :featureName:file.py --oneline
```
