## Overview(概要)
- 5chのようなWeb掲示板
<img width="1421" alt="スクリーンショット 2020-03-31 10 10 07" src="https://user-images.githubusercontent.com/58096254/77976470-0d7ed480-7338-11ea-8f8b-6a1b458d64bf.png">
<img width="1409" alt="スクリーンショット 2020-03-31 10 13 12" src="https://user-images.githubusercontent.com/58096254/77976559-49b23500-7338-11ea-8ece-4c059f0dad72.png">


## Features(機能)
-  ログイン機能 (email + pass)
-  閲覧・投稿機能
-  スレッド機能
-  検索機能

## topicsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|boby|text|null: false|
|topic_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :topic
