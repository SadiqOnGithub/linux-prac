
find /path -name "*.log" | xargs rm -v



# Safer version with -print0:
find . -name "*.log" -print0 | xargs -0 rm -v
