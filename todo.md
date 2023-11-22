## Frontend
- マッチメイキング
  - トランザクションかキューイングを実装し、多重マッチングを防ぐ
## Backend
- マッチメイク時などにBackendに送信する情報を整理する
- 待機、マッチメイク、ルーム作成、参加、対戦開始、対戦経過、対戦終了、ルーム退室、ルーム削除まで、どこまでをどのようにBackendに連携するのか整理する



- TODO
  - SNSログイン追加
  - AppUserControllerなどのExceptionを上流でキャッチして、適切なacceptでレスポンスを返す
  - AuthenticateController => AuthController
  - ゲストではじめる（createUser）でuserのレスポンスを取得できていない問題の解決
    - flutter側とレスポンス側でcamelCaseとsnakecaseの違いが原因として可能性大
  - ゲストではじめるを一度目に押下した際のみ403となる問題の解決