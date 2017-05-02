#!/bin/bash
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
curl --include --request GET http://localhost:4741/birthdays/3 \
  --header "Authorization: Token token=$TOKEN"
