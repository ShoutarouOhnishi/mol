## Frontend
- マッチメイキング
  - トランザクションかキューイングを実装し、多重マッチングを防ぐ
## Backend
- マッチメイク時などにBackendに送信する情報を整理する
- 待機、マッチメイク、ルーム作成、参加、対戦開始、対戦経過、対戦終了、ルーム退室、ルーム削除まで、どこまでをどのようにBackendに連携するのか整理する



- TODO
  - SNSログイン追加
  - テストコード
  - Bearerトークンを各APIでセットするのではなく上層部でセットする
  - shared_notifiersやwidgetsなどがしっくりこないため、変更する
  - view_modelsやviewsを変更する　一般的なアーキテクチャを調査
  - openapiから自動生成されるコードでヘッダにaccept: application/jsonを指定する方法を考える　もしくはbackend
  - main.dartで表示しているローディングを