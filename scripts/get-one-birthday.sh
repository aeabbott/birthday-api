#!/bin/bash

#TOKEN=BAhJIiU5OWE3NWM2YTFlYThiZWNhMDZlNGQxMjVmYWYwZWQzZAY6BkVG--e88e04c3fea071ac5cfe2379c170204d2991c171
#ID=7
curl --include --request GET http://localhost:4741/birthdays/$ID \
  --header "Authorization: Token token=$TOKEN"
