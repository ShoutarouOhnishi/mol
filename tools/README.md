# 事前セットアップ
それぞれのアクションに必要な依存関係をインストールします。

## 前提条件
- Node.js インストール
- npm インストール
  
## 前提条件の確認
```console
node -v
npm -v
```

## 依存関係をインストールする
```console
npm ci
```

# OpenAPISpecificationをPostmanにインポートする方法

## openapi.ymlの外部参照を一つにバンドルする
```console
npx swagger-cli bundle -t yaml -r -o ../docs/api/bundled-openapi.yml ../docs/api/openapi.yml
```

## Postmanにインポートする
- 生成されたbundled-openapi.ymlをPostmanにインポートする
  - インポート時に`View Import Settings`で`Parameter generation`を`Example`に変更する

# FirebaseAuth テスト用IDトークン発行方法

## jqのインストール
### macOS
```console
brew install jq
```
### Ubuntu
```console
sudo apt-get update
sudo apt-get install jq
```
### Windows
1. jqの公式ページからダウンロード。
2. ダウンロードしたファイルを適切なディレクトリに移動。
3. 環境変数にそのディレクトリを追加。

## Firebaseログイン
```console
npx firebase login
```

## firebase.json作成(既に存在すれば不要)
```console
npx firebase init

? Which Firebase features do you want to set up for this directory? Press Space to select features, then Enter to confirm your choices. (Press <space> to 
select, <a> to toggle all, <i> to invert selection, and <enter> to proceed)
❯◯ Realtime Database: Configure a security rules file for Realtime Database and (optionally) provision default instance
 ◯ Firestore: Configure security rules and indexes files for Firestore
 ◯ Functions: Configure a Cloud Functions directory and its files
 ◯ Hosting: Configure files for Firebase Hosting and (optionally) set up GitHub Action deploys
 ◯ Hosting: Set up GitHub Action deploys
 ◯ Storage: Configure a security rules file for Cloud Storage
 ◯ Emulators: Set up local emulators for Firebase products

 => Emulatorsのみ選択


? Please select an option: (Use arrow keys)
❯ Use an existing project 
  Create a new project 
  Add Firebase to an existing Google Cloud Platform project 
  Don't set up a default project 

  => Use an existing projectを選択

? Select a default Firebase project for this directory: (Use arrow keys)
❯ online-battle-project (Online-Battle-Project-DEV) 

 => 該当のプロジェクトを選択

=== Emulators Setup
? Which Firebase emulators do you want to set up? Press Space to select emulators, then Enter to confirm your choices. (Press <space> to select, <a> to toggle 
all, <i> to invert selection, and <enter> to proceed)
❯◯ Authentication Emulator
 ◯ Functions Emulator
 ◯ Firestore Emulator
 ◯ Database Emulator
 ◯ Hosting Emulator
 ◯ Pub/Sub Emulator
 ◯ Storage Emulator

 => Authentication Emulatorのみ選択

? Which port do you want to use for the auth emulator? (9099)
 => Enter

? Would you like to enable the Emulator UI? (Y/n)
 => Y

? Which port do you want to use for the Emulator UI (leave empty to use any available port)?
 => Enter

? Would you like to download the emulators now? (Y/n)
 => Y
```

## エミュレーター起動
```console
npx firebase emulators:start --only auth
```

## ユーザー登録 + IDトークン発行
```console
./scripts/firebase/create_user.sh <email> <password>
```

## ログイン + IDトークン発行
```console
./scripts/firebase/login_user.sh <email> <password>
```

## 匿名認証 + IDトークン発行
```console
./scripts/firebase/anonymous_auth.sh
```

## .envファイルに環境変数を追加
ローカルでバックエンドサーバーを起動する場合は、.envファイルに下記を追加してください。
`FIREBASE_AUTH_EMULATOR_HOST=host.docker.internal:9099`