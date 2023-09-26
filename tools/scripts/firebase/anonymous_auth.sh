#!/bin/bash

# 匿名認証
anon_response=$(curl -s -X POST "http://localhost:9099/identitytoolkit.googleapis.com/v1/accounts:signUp?key=API_KEY" \
-H "Content-Type: application/json" \
--data '{"returnSecureToken": true}')

# IDトークンを取得
id_token=$(echo $anon_response | jq -r '.idToken')

# IDトークンが空でなければ表示
if [ -n "$id_token" ]; then
  echo "ID Token from Anonymous Auth: $id_token"
else
  echo "Anonymous auth failed"
fi
