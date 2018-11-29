#!/bin/bash

curl --include --request POST "http://localhost:4741/teams" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "teams": {
    "name": "'"${NAME}"'",
    "record": "'"${RECORD}"'",
    "location": "'"${LOCATION}"'",
    "user_id": "'"${USERID}"'",
    "player_id": "'"${PLAYER}"'"
  }
}'
