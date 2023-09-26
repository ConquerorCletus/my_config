#!/bin/bash

# Full path to the git executable
GIT_EXECUTABLE="/usr/bin/git"

# Run 'git add .'
$GIT_EXECUTABLE add .

# Prompt for a commit message
echo -n "Enter your commit message: "
read commit_message

# Run 'git commit -m' with the entered commit message
$GIT_EXECUTABLE commit -m "$commit_message"

# Run 'git push'
$GIT_EXECUTABLE push

