#!/bin/bash

TOKEN=BAhJIiU4NWZmYTdiZDBkOTdjMzE5ZjgzNzMxZDQ0NWIzZDNiMgY6BkVG--5a6f548297cfa7cf558ecde011ea38860c823623
curl --include --request GET http://localhost:4741/birthdays/3 \
  --header "Authorization: Token token=$TOKEN"
