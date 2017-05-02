#!/bin/bash

ID=15
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
curl --include --request PATCH http://localhost:4741/birthdays/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"\
  --data '{
    "birthday": {
      "born_on":"2000-02-15",
      "family_name":"updated once more name",
      "given_name":" udpated first name",
      "nickname":"updated nickname"
    }
  }'
