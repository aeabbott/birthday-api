[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# birthday-api

An api for storing your birthdays you'd like to remember. Includes authentication.

1. Link to app: https://aeabbott.github.io/birthday-client/
1. Link to client repo: https://github.com/aeabbott/birthday-client

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

Until Rails 5 is released, this template should follow the most recent released
version of Rails 4, as well as track `master` branches for `rails-api` and
`active_model_serializers`.

## Installation

1.  [Download](../../archive/master.zip) this template.
1.  Unzip and rename the template directory.
1.  Move into the new project and `git init`.
1.  Install dependencies with `bundle install`.
1.  Rename your app module in `config/application.rb` (change
    `BirthdayApi`).
1.  Rename your project database in `config/database.yml` (change
    `'birthday-api'`).
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rake secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests to your deployed API, you will need to set
    `SECRET_KEY_BASE` in the environment of the production API (using `heroku
    config:set` or the Heroku dashboard).
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `heroku config:set CLIENT_ORIGIN https://<github-username>.github.io`).
1.  Setup your database with `bin/rake db:nuke_pave` or `bundle exec rake
    db:nuke_pave`.
1.  Run the API server with `bin/rails server` or `bundle exec rails server`.


## API

The Birthday section outlines the CRUD actions you can perform against /birthdays.

The Authetnication section outlines the CRUD actions you can perform against
/users.

All birthday API actions require a TOKEN. You must authenticate your user first via the authentication portion of the API before you can run an CRUD requests on /birthdays.

### Birthday
| Verb   | URI Pattern            | Controller#Action  |
|--------|------------------------|--------------------|
| POST   | `/birthdays`            | `birthdays#create` |
| GET    | `/birthdays`           | `birthdays#index`  |
| GET    | `/birthdays/:id`       | `birthdays#show`   |
| PATCH  | `/birthdays/:id`       | `birthdays#update` |
| DELETE | `/birthdays/:id`       | `birthdays#destroy`|

### POST /birthdays

Requets:

```sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/birthdays"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "birthday": {
      "born_on":"1990-02-15",
      "family_name":"last name",
      "given_name":"first name",
      "nickname":"nickname"
    }
  }'
  ```
  ```sh
  TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
  ```
  Response:

  ```md
  HTTP/1.1 201 Created
  X-Frame-Options: SAMEORIGIN
  X-XSS-Protection: 1; mode=block
  X-Content-Type-Options: nosniff
  Location: http://localhost:4741/birthdays/62
  Content-Type: application/json; charset=utf-8
  ETag: W/"2239de4079385fc19ec859f65244927c"
  Cache-Control: max-age=0, private, must-revalidate
  X-Request-Id: 64f4425d-f49b-42b5-b0bb-bd07c1651d19
  X-Runtime: 0.015744
  Vary: Origin
  Transfer-Encoding: chunked

  {
    "birthday": {
      "id":62,
      "given_name":"first name",
      "family_name":"last name",
      "nickname":"nickname",
      "born_on":"1990-02-15"
      }
    }
  ```
### GET /birthdays

Requests:

```sh
curl --include --request GET http://localhost:4741/birthdays \
  --header "Authorization: Token token=$TOKEN"
```
```sh
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
```

Response:
```md
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"a0b6a570037f1c1414cabf5f823fe412"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7d9bb6c2-3ef9-4b44-8055-238a3b44fb3a
X-Runtime: 0.156077
Vary: Origin
Transfer-Encoding: chunked

{
  "birthdays":
    [
      {
        "id":15,
        "given_name":" udpated first name",
        "family_name":"updated last name",
        "nickname":"updatednickname",
        "born_on":"2000-02-15"
      },
      {
        "id":18,
        "given_name":" udpated first name",
        "family_name":"updated last name",
        "nickname":"updatednickname",
        "born_on":"2000-02-15"
      },
      {
        "id":19,
        "given_name":" udpated first name",
        "family_name":"updated last name",
        "nickname":"updated nickname",
        "born_on":"2000-02-15"
      }
    ]
  }
```

### GET /birthdays/:id

Requests:

```sh
curl --include --request GET http://localhost:4741/birthdays/3 \
  --header "Authorization: Token token=$TOKEN"
```
```sh
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
```

Response:
```md
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"989397d0fbdd046087d9b282a3f3dc5b"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 31a19f05-5f2e-4765-b717-c33da270e201
X-Runtime: 0.006820
Vary: Origin
Transfer-Encoding: chunked

{
  "birthday":
  {
    "id":3,
    "given_name":"Julie",
    "family_name":"Carroll",
    "nickname":"Getting everyone jobs",
    "born_on":"2017-01-03"
    }
  }
```

### PATCH /birthdays/:id

Requests:

```sh
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
```
```sh
ID=15
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
```

Response:

```md
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: 1676e028-7a26-43f2-a97e-350d06185416
X-Runtime: 0.016970
Vary: Origin

```

### DELETE /birthdays/:id

```sh
curl --include --request DELETE http://localhost:4741/birthdays/$ID \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN"\
```

```sh
ID=15
TOKEN= BAhJIiU2MDg5NzJhNmExYmE4MjU0NzNjYThlZTI0MjQ2NGEwNgY6BkVG--e46f5a5ed540f0bdde2908ac40ac2792ed68b758
```
Response:

```md
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: b414abbe-1982-46dd-ab7d-83a75be200a2
X-Runtime: 0.012465
Vary: Origin
```

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password/$ID" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
ID=1 OLDPW=hannah NEWPW=elle TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl http://localhost:4741/sign-out/$ID \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```


### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rake db:migrate VERSION=0
bin/rake db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rake db:migrate VERSION=0
heroku run rake db:migrate db:seed db:examples
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
