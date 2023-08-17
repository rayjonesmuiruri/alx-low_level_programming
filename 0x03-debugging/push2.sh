#!/bin/bash

# Array of file names
files=("3-print_remaining_days.c" "2-largest_number.c" "1-main.c" "0-main.c")

# Array of commit messages
commit_messages=("print remaining days" "largest numbers" "1-main" "0-main")

# Check if there are changes to commit
if [[ $(git status --porcelain) ]]; then
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
else
    echo "No changes to commit."
fi
