#!/bin/bash

#
# A simple script to create a new directory and an executable script file within it.
#
# Usage: ./create_project.sh <folder_name>
#

# --- Main Script Logic ---

# Check if the user provided exactly one argument (the folder name).
# $# holds the number of arguments passed to the script.
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder_name>"
    echo "Please provide a single name for the new folder."
    exit 1
fi

# Assign the first argument ($1) to a more readable variable name.
FOLDER_NAME="$1"

# Check if a directory or file with the given name already exists.
# The -e flag checks for existence.
if [ -e "$FOLDER_NAME" ]; then
    echo "Error: A file or directory named '$FOLDER_NAME' already exists."
    echo "Please choose a different name."
    exit 1
fi

# Create the new directory.
# The -v (verbose) flag makes mkdir print a message for each created directory.
echo "Creating directory..."
mkdir -v "$FOLDER_NAME"

# Check the exit code of the last command ($?) to see if mkdir succeeded.
# A non-zero exit code indicates an error.
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory '$FOLDER_NAME'."
    exit 1
fi

# Define the full path for the new script file.
SCRIPT_PATH="$FOLDER_NAME/script.sh"

# Create the empty script file inside the new directory.
echo "Creating script file at '$SCRIPT_PATH'..."
touch "$SCRIPT_PATH"

# Add the execute (+x) permission to the script file for the current user.
echo "Setting execution permission..."
chmod +x "$SCRIPT_PATH"

echo "" # Add a blank line for better readability.
echo "✅ Success! Folder '$FOLDER_NAME' and executable file 'script.sh' have been created."
