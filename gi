#!/bin/bash

# Run 'git add .'
git add .

# Prompt for a commit message
echo -n "Enter your commit message: "
read commit_message

# Run 'git commit -m' with the entered commit message
git commit -m "$commit_message"

# Run 'git push'
git push
