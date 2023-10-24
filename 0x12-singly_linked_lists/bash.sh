#!/bin/bash

# Define an associative array where the key is the filename and the value is the commit message
declare -A commit_messages=(
    ["0-print_list.c"]="0-print_list.c"
    ["1-list_len.c"]="1-list_len.c"
    ["2-add_node.c"]="2-add_node.c"
    ["3-add_node_end.c"]="3-add_node_end.c"
    ["4-free_list.c"]="4-free_list.c"
    ["100-first.c"]="100-first.c"
    ["101-hello_holberton.asm"]="101-hello_holberton.asm"
    ["lists.h"]="lists.h"
    ["README.md"]="README.md"
)

# Loop through the files and commit and push each with the specified commit message
for file in "${!commit_messages[@]}"; do
    # Add the file to the git repository
    git add "$file"

    # Commit the file with the specified commit message
    git commit -m "${commit_messages[$file]}"

    # Push the commit to your repository (assuming you have already configured the remote)
    git push origin master  # Change "master" to your branch name if different
done
