#!/bin/bash

email=$1
password=$2

# ユーザーでログイン
login_response=$(curl -s -X POST "http://localhost:9099/identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=API_KEY" \
-H "Content-Type: application/json" \
--data "{\"email\": \"$email\", \"password\": \"$password\", \"returnSecureToken\": true}")

# IDトークンを取得
id_token=$(echo $login_response | jq -r '.idToken')

# IDトークンが空でなければ表示
if [ -n "$id_token" ]; then
  echo "ID Token from Login: $id_token"
else
  echo "Login failed"
fi
