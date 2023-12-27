# resource構築 - デプロイ - 初期設定迄の手順

## SecretsManagerに環境変数登録
登録 or 更新はスクリプト内で自動で判定します。
事前に適切なaws_profileを設定してから実行してください。
`cd terraform`
`scripts/update_env_on_secrets_manager.sh ../../backend/.env.dev dev`

## SecretsManagerにDB_USERNAMEとDB_PASSWORDを個別に登録/更新
`cd terraform`
`scripts/update_db_env_on_secrets_manager.sh ../../backend/.env.dev dev`

## ドメイン関連
1. Route53でドメイン登録
2. ドメイン登録時にホストゾーンも併せて作成
3. ACMで証明書をリクエスト
4. リクエスト後に証明書が要求するレコードをホストゾーンに登録

## resource適用
`tf plan`
`cd terraform`
`scripts/tfapply.sh`

## Dockerイメージのビルド
`cd backend`
`docker build -t main .`

## Dockerイメージにタグ付け
`docker tag main:latest 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main:latest`

## ECRへの認証
`aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main`

## DockerイメージをECRにプッシュ
`docker push 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main:latest`

## ECSクラスターに紐づく全ECSタスクを停止（停止することで新タスクが起動する）
`cd terraform`
`scripts/stop_ecs_tasks.sh mol-cluster`

# TIPS
## tfファイルの定義を単一ファイルに纏める
`cd terraform`
`cat *.tf > combined.txt`

## SSHトンネリングでRDSに接続
`cd terraform`
`ssh -N -L 13306:mol-db.cfwq71f0u5xg.ap-northeast-1.rds.amazonaws.com:3306 ec2-user@13.115.229.29 -i privates/private_key.pem`
`mysql -h 127.0.0.1 -P 13306 -u ${username} -p`

## ECSタスク内でコマンド実行
複数タスクに対応していますが、クラスターやサービスは単一であることが条件です。
使用するには事前にjqコマンドを使用できるようにする必要があります。
`cd terraform`
`scripts/execute_command_on_ecs_task.sh $tfstate_file_path $command $command...`
### 例
`scripts/execute_command_on_ecs_task.sh terraform.tfstate.d/dev/terraform.tfstate "touch .env php artisan key:generate "php artisan passport:install "php artisan migrate"`

## ECSサービス更新
`aws ecs update-service --cluster mol-cluster --service mol-service --force-new-deployment`

## ECSタスクのコンテナにアクセス
```
aws ecs execute-command  \
    --region ap-northeast-1  \
    --cluster mol-cluster  \
    --task b2d6570e5ca444a581d6aa1cf6b556c8  \
    --container mol  \
    --command "/bin/sh"  \
    --interactive
```

## docker imageにアクセス
`docker run -it 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main /bin/sh`

## Dockerimage全削除
`docker rmi $(docker images -q) -f`