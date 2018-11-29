#!/bin/bash

curl --include --request GET "http://localhost:4741/teams/${ID}"
--header "Content-Type: application/json" \
--data '{
  "teams": {
    "name": "'"${NAME}"'",
    "result": "'"${RESULT}"'",
    "location": "'"${LOCATION}"'"
  }
}'
