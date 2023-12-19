#!/bin/bash

# 引数から .env ファイルのパスを受け取る
env_file=$1
# 環境名を受け取る
env_name=$2
# 一時的な JSON ファイルのパス
json_file="temp.json"
# Secrets Manager のシークレット名
secret_name="${env_name}-secrets"

# .env から JSON への変換
echo "{" > $json_file
while IFS='=' read -r key value
do
  if [[ -n $key && -n $value ]]; then
    # クォートを削除
    value=$(echo $value | sed -e 's/^"//' -e 's/"$//' -e "s/^'//" -e "s/'$//")
    echo "\"$key\":\"$value\"," >> $json_file
  fi
done < "$env_file"
# 最後のカンマを削除してファイルを閉じる
sed -i '$ s/.$//' $json_file
echo "}" >> $json_file

# Secrets Manager にシークレットを登録/更新
if aws secretsmanager describe-secret --secret-id $secret_name 2>/dev/null; then
    aws secretsmanager update-secret --secret-id $secret_name --secret-string file://$json_file
else
    aws secretsmanager create-secret --name $secret_name --secret-string file://$json_file
fi

# 一時的な JSON ファイルの削除
rm $json_file