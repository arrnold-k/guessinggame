#!/bin/bash

function ask {
  echo "How many files are in the current directory?"
  read guess
}

files=$(ls -1 | wc -l)

ask
while [[ $guess -ne $files ]]; do
  if [[ $guess -lt $files ]]; then
    echo "Too low!"
  else
    echo "Too high!"
  fi
  ask
done

echo "Congratulations! You guessed it right."
