# How umask works (quick mechanics)
# Typical creation modes the system uses before mask:
# files: 666 (rw-rw-rw-)
# directories: 777 (rwxrwxrwx)

# The umask value is subtracted (bitwise) from the requested mode.

# Example:
# umask 022
# Files: 666 - 022 = 644 → rw-r--r--
# Dirs: 777 - 022 = 755 → rwxr-xr-x
# umask 002 (group-write allowed)
# Files: 664 → rw-rw-r--
# Dirs: 775 → rwxrwxr-x
# umask 077 (very restrictive)
# Files: 600 → rw-------
# Dirs: 700 → rwx------


# start with umask 022
umask 022
touch afile
mkdir adir
ls -l afile         # shows -rw-r--r--
ls -ld adir         # shows drwxr-xr-x

# change umask to restrictive
umask 077
touch secret
ls -l secret        # shows -rw-------

# chmod changes an existing file
chmod 644 secret
ls -l secret        # now -rw-r--r--
