#!/bin/bash

ID=9
TOKEN=BAhJIiU1OTNhMTI2YWIwZmUzYTk5MzkwNWM1MWU2YTE1MThkYgY6BkVG--e597fff7693baf748ced70c7633a6985b923d848
curl --include --request DELETE http://localhost:4741/birthdays/$ID \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN"\
