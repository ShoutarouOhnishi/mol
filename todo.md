## Frontend
- マッチメイキング
  - トランザクションかキューイングを実装し、多重マッチングを防ぐ
## Backend
- マッチメイク時などにBackendに送信する情報を整理する
- 待機、マッチメイク、ルーム作成、参加、対戦開始、対戦経過、対戦終了、ルーム退室、ルーム削除まで、どこまでをどのようにBackendに連携するのか整理する



- TODO
  - Clean Architectureのディレクトリ構成を確定する
  - ChatGPTを活用して
    - StateNotifierの各処理をUseCaseに分離させる  
    - Repositoryをインターフェースと実装で分離させる  
    - stateとstate_notifierを分離させる
  - SNSログイン追加
  - テストコード
  - Bearerトークンを各APIでセットするのではなく上層部でセットする
  - openapiから自動生成されるコードでヘッダにaccept: application/jsonを指定する方法を考える　もしくはbackend