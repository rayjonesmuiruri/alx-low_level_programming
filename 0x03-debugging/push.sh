#!/bin/bash

# Array of file names
files=("3-print_remaining_days.c" "2-largest_number.c" "1-main.c" "0-main.c" "main.h")

# Array of commit messages
commit_messages=("Remaining Days" "largest Numbers" "1main" "0main" "main.h")

# Loop through the files and commit messages
for ((i=0; i<${#files[@]}; i++)); do
    file="${files[i]}"
    commit_msg="${commit_messages[i]}"

    # Add the file
    git add "$file"

    # Commit with the corresponding message
    git commit -m "$commit_msg"

    # Push the changes
    git push
done

