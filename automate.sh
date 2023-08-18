#! /bin/bash
file_path="llama2-installation_manual.pdf"
branch=$(git symbolic-ref --short HEAD)
if [ -e "$file_path" ]; then
    echo "File exists. Deleting..."
    rm "$file_path"
    echo "File deleted."
else
    echo "File does not exist."
fi
if [ $# -eq 1 ]
then
  echo "You are currently at branch of $branch"
  git add .
  git commit -m "$1"
  git push -u origin "$branch"
else
  echo "WARNING: 1 arguments for bash is required."
fi