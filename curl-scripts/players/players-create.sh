#!/bin/bash

curl --include --request POST "http://localhost:4741/players" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "player": {
    "first_name": "'"${FIRST}"'",
    "last_name": "'"${LAST}"'",
    "position": "'"${POSITION}"'",
    "age": "'"${AGE}"'",
    "goals": "'"${GOALS}"'"
  }
}'
