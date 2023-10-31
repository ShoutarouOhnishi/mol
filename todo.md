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
  - ChatGPTを活用して
    - StateNotifierの各処理をUseCaseに分離させる  
    - Repositoryをインターフェースと実装で分離させる  
    - stateとstate_notifierを分離させる
  - usecaseのproviderをどこに定義すべきか
    - usecaseは複数箇所から呼び出されるため、特定の使用箇所でproviderを定義するのは適切ではない
    - 直感的にはusecaseの実装ファイルにproviderを定義したいが、usecaseはinterfaceを使用しており、実装を露呈しないメリットがある。
    　実装ファイルにproviderを定義すると、呼び出し側で実装ファイルをimportしないといけないため、実装を露顕することになる。
  - 各ファイルでviewmodelという変数名をnotifierに変更していく
  - SNSログイン追加
  - テストコード
  - Bearerトークンを各APIでセットするのではなく上層部でセットする
  - openapiから自動生成されるコードでヘッダにaccept: application/jsonを指定する方法を考える　もしくはbackend