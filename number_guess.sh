#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username: "
read USERNAME

RETURING_USER=$($PSQL "SELECT username FROM users WHERE username ='$USERNAME'")

if [[ -z $RETURING_USER ]]; then
  INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username= '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username= '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Grab user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username ='$USERNAME'")

TRIES=0
GUESS=0

GUESSING_MACHINE() {
  while true; do
    read GUESS

    if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
      TRIES=$((TRIES + 1))
    elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
      TRIES=$((TRIES + 1))
    else
      TRIES=$((TRIES + 1))
      break
    fi
  done
}

echo "Guess the secret number between 1 and 1000:"
GUESSING_MACHINE

# Insert game data
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")

# Final message
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
