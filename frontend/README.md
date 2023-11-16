## デザインパターン
- CleanArchtecture

## APIクライアントコード自動生成 (TODO: 一連の作業をシェルスクリプトで実行できるようにする)
```console
npm ci
rm -rf lib/infrastructure/datasource/openapi/client
openapi-generator-cli generate -i ../docs/api/openapi.yml -g dart -o ./lib/infrastructure/datasource/openapi/client
rm -r ./lib/infrastructure/datasource/openapi/client/test # 不要なテストコードを削除
```