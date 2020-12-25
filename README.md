# テーブル設計

## users テーブル

| colum      |type         | options      |
|:-----------|------------:|:------------:|
| email      | string      | null: false  |
| password   | string      | null: false  |
| name       | string      | null: false  |
| profile    | text        | null: false  |
| occupation | text        | null: false  |
| position   | text        | null: false  |

### Association
- has_many : comments
- has_many : prototypes

## prototypes テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| title     | string     | null: false                    |
| catch_copy| text       | null: false                    |
| concept   | text       | null: false                    |
| user      | references | null: false, foreign_key: true |

### Associations
- belongs_to :users
- has_many   :comments


## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |


### Associations

- belongs_to : prototypes
- belongs_to : users


