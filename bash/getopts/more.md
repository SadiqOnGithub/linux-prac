
Absolutely — let’s look at a few **clear, real-world-style examples** using `getopts` with **multiple flags**, different value combinations, and optional flags.

---

## ✅ Example 1: `-f filename`, `-v` (no value)

```bash
#!/bin/bash

while getopts "f:v" flag; do
  case "$flag" in
    f) filename=$OPTARG ;;
    v) verbose=true ;;
  esac
done

echo "Filename: $filename"
echo "Verbose? ${verbose:-false}"
```

### Run:

```bash
./myscript.sh -f data.txt -v
```

---

## ✅ Example 2: `-u username`, `-p password`, `-r role`, `-v` (optional verbose)

```bash
#!/bin/bash

while getopts "u:p:r:v" flag; do
  case "$flag" in
    u) user=$OPTARG ;;
    p) pass=$OPTARG ;;
    r) role=$OPTARG ;;
    v) verbose=true ;;
    *) echo "Invalid option"; exit 1 ;;
  esac
done

echo "User: $user"
echo "Pass: $pass"
echo "Role: $role"
echo "Verbose mode: ${verbose:-false}"
```

### Run:

```bash
./myscript.sh -u admin -p secret -r dev -v
```

---

## ✅ Example 3: Handle Missing Args Gracefully

```bash
#!/bin/bash

while getopts "n:a:" opt; do
  case "$opt" in
    n) name=$OPTARG ;;
    a) age=$OPTARG ;;
    *) echo "Usage: $0 -n <name> -a <age>"; exit 1 ;;
  esac
done

if [ -z "$name" ] || [ -z "$age" ]; then
  echo "Name and age are required."
  exit 1
fi

echo "Name: $name, Age: $age"
```

### Run:

```bash
./myscript.sh -n Sadiq -a 28
```

---

## ✅ Example 4: Boolean flags + positional args

```bash
#!/bin/bash

while getopts "dv" opt; do
  case "$opt" in
    d) dry_run=true ;;
    v) verbose=true ;;
  esac
done

shift $((OPTIND - 1))  # Shift positional arguments after flags

echo "Dry run: ${dry_run:-false}"
echo "Verbose: ${verbose:-false}"
echo "Positional args (e.g., filenames): $@"
```

### Run:

```bash
./myscript.sh -d -v file1.txt file2.txt
```

---

## 🧠 Patterns to Remember:

| Flag string    | Meaning                             |
| -------------- | ----------------------------------- |
| `"f:v"`        | `-f` takes a value, `-v` is boolean |
| `"a:b:c:"`     | All flags take values               |
| `"x"`          | Just a single boolean flag          |
| `*)` in `case` | Handles invalid or missing flags    |
