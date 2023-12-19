#!/bin/bash

# 引数から .env ファイルのパスを受け取る
env_file=$1
# 環境名を受け取る
env_name=$2

# .env から DB_USERNAME と DB_PASSWORD を取得し、それぞれを Secrets Manager に登録/更新
while IFS='=' read -r key value
do
  if [[ $key == "DB_USERNAME" || $key == "DB_PASSWORD" ]]; then
    # クォートを削除
    value=$(echo $value | sed -e 's/^"//' -e 's/"$//' -e "s/^'//" -e "s/'$//")
    # Secrets Manager のシークレット名
    secret_name="${env_name}-${key}"

    # Secrets Manager にシークレットを登録/更新
    if aws secretsmanager describe-secret --secret-id $secret_name 2>/dev/null; then
        aws secretsmanager update-secret --secret-id $secret_name --secret-string "$value"
    else
        aws secretsmanager create-secret --name $secret_name --secret-string "$value"
    fi
  fi
done < "$env_file"