#!/bin/bash

# Function to start the guessing game
function start_game() {
  local correct_count=$(ls -1 | wc -l)  # Get the number of files in the current directory
  local guess=-1

  while [[ $guess -ne $correct_count ]]; do
    echo "How many files are in the current directory?"
    read guess

    if [[ $guess -lt $correct_count ]]; then
      echo "Your guess is too low. Try again."
    elif [[ $guess -gt $correct_count ]]; then
      echo "Your guess is too high. Try again." 
    fi
  done

  echo "Congratulations! You guessed the correct number of files."
}

# Call the function to start the game
start_game
