## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association


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