#!/bin/bash

curl --include --request POST "http://localhost:4741/teams" \
--header "Content-Type: application/json" \
--data '{
  "teams": {
    "name": "'"${NAME}"'",
    "record": "'"${RECORD}"'",
    "location": "'"${LOCATION}"'"
  }
}'
