#! /bin/bash
branch=$(git symbolic-ref --short HEAD)
if [ -n "$(find . -type f -name "*.pdf")" ]; then
    find . -type f -name "*.pdf" -exec rm -f {} \; -exec echo "PDF files are successfully deleted." \;
else
    echo "You have no PDF files in the directory."
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