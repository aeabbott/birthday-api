#!/bin/bash

ID=15
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
curl --include --request DELETE http://localhost:4741/birthdays/$ID \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN"\
