#!/bin/bash

curl --include --request PATCH "http://localhost:4741/players/${ID}" \
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
