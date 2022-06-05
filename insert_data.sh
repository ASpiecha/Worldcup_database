#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "DROP TABLE t")"
echo "$($PSQL "CREATE TABLE t (year INT NOT NULL,round VARCHAR(20) NOT NULL,winner VARCHAR(20) NOT NULL,opponent VARCHAR(20) NOT NULL,winner_goals INT NOT NULL,opponent_goals INT NOT NULL)")"
echo "$($PSQL "\COPY t FROM 'games.csv' DELIMITER ',' header csv")"
echo "$($PSQL "INSERT INTO teams (name) SELECT DISTINCT winner FROM t WHERE NOT EXISTS (SELECT name FROM teams WHERE t.winner = teams.name)")"
echo "$($PSQL "INSERT INTO teams (name) SELECT DISTINCT opponent FROM t WHERE NOT EXISTS (SELECT name FROM teams WHERE t.opponent = teams.name)")"
echo "$($PSQL "INSERT INTO games 
(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
SELECT year, round, winner.team_id AS w, opponent.team_id AS o, winner_goals, opponent_goals
FROM t
INNER JOIN teams winner ON t.winner = winner.name
INNER JOIN teams opponent ON t.opponent = opponent.name")"