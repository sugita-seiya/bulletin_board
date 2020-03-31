## Overview(概要)
- 5chのようなWeb掲示板

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