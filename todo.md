## Frontend
- マッチメイキング
  - トランザクションかキューイングを実装し、多重マッチングを防ぐ
## Backend
- マッチメイク時などにBackendに送信する情報を整理する
- 待機、マッチメイク、ルーム作成、参加、対戦開始、対戦経過、対戦終了、ルーム退室、ルーム削除まで、どこまでをどのようにBackendに連携するのか整理する



- TODO
  - `POST: /api/v1/user` のレスポンスに`token`だけでなくその他のユーザー情報も返すようにする
    - アプリ側でユーザーモデルを生成する
      - CreateUserResponse.dartをextends？
      - 作成したユーザーモデルをauthState.authenticatedに持たせる
  - SNSログイン追加