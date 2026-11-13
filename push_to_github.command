#!/bin/bash
cd "$(dirname "$0")"
echo "=== Pushing The Dry Summer to GitHub ==="
git push -u origin master
STATUS=$?
if [ $STATUS -eq 0 ]; then
  echo "SUCCESS! Project is now backed up on GitHub."
else
  echo "Push failed with status $STATUS"
fi
echo "Press any key to close..."
read -n 1
