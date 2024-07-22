#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Function to prompt for an integer guess
prompt_guess() {
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  NUMBER_OF_GUESSES=1

  while [[ $GUESS -ne $SECRET_NUMBER ]]
  do
    if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
    read GUESS
    NUMBER_OF_GUESSES=$(( NUMBER_OF_GUESSES + 1 ))
  done
}

# Prompt for username
echo "Enter your username:"
read USERNAME

# Check if username exists in the database
USER_INFO=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")

if [[ -z $USER_INFO ]]; then
  # New user
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  # Existing user
  IFS="|" read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_INFO"
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Prompt for guesses
prompt_guess

# Completion message
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

# Update database
if [[ -z $USER_INFO ]]; then
  # Update games played and best game for new user
  UPDATE_USER_RESULT=$($PSQL "UPDATE users SET games_played = 1, best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME'")
else
  # Increment games played for existing user
  UPDATE_GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))
  if [[ $NUMBER_OF_GUESSES -lt $BEST_GAME ]]; then
    UPDATE_BEST_GAME=$NUMBER_OF_GUESSES
  else
    UPDATE_BEST_GAME=$BEST_GAME
  fi
  UPDATE_USER_RESULT=$($PSQL "UPDATE users SET games_played = $UPDATE_GAMES_PLAYED, best_game = $UPDATE_BEST_GAME WHERE username='$USERNAME'")
fi
