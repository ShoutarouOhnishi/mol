# 環境構築（MacOS）
## Dockerインストール
```shell
brew install --cask docker
```

## Composerをインストール
```shell
brew install composer
```

## リポジトリをクローン
```shell
git clone https://github.com/ShoutarouOhnishi/online-battle-project
```

## .env.exampleをコピーして.envを作成
```shell
cp .env.example .env
cp .env.example .env.testing

sed -i '' \
-e 's/^\(DB_USERNAME\)=.*$/\1=sail/' \
-e 's/^\(DB_PASSWORD\)=.*$/\1=password/' \
-e 's/^\(DB_DATABASE\)=.*$/\1=testing/' \
.env.testing
```


## 依存関係インストール
```shell
composer install
```

## sailのaliasを設定
```shell
alias sail='vendor/bin/sail'
```

## Sail起動
```shell
sail up -d
```

## アプリケーションキー発行
```shell
sail artisan key:generate
sail artisan key:generate --env=testing
```

## OAuthキー生成
```shell
sail artisan passport:install
```

## migration実行
```shell
sail artisan migrate
```

# 環境構築（Windows(WSL/Ubuntu)）
## Chocolatey インストール
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Docker Desktop インストール
```powershell
choco install docker-desktop
```


...その他のセットアップはMacOSと同様


# デプロイ
## Dockerイメージのビルド
`docker build -t main .`

## Dockerイメージにタグ付け
`docker tag main:latest 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main:latest`

## ECRへの認証
`aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main`

## DockerイメージをECRにプッシュ
`docker push 785460806234.dkr.ecr.ap-northeast-1.amazonaws.com/main:latest`

## ECSクラスターに紐づく全ECSタスクを停止（停止することで新タスクが起動する）
`../infra/terraform/stop_ecs_tasks.sh $ecs_cluster_name`
