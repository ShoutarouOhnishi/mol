## 事前準備

- Dockerのインストール
- nandora3のリポジトリをclone
  
## データベース構築
  ```sql
  CREATE SCHEMA `online_battle_backend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
  GRANT ALL PRIVILEGES ON `online_battle_backend`.* TO 'sail'@'%'; FLUSH PRIVILEGES;
  ```
## Laravel起動
  ```console
  sail composer install
  sail up
  ```
