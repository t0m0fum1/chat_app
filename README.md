#テーブル設計

## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has many :room_users
- has many :users, through :room_users
- has many :messages

## rooms テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |

### Association
- has many :room_users
- has many :users, through: room_users
- has many :messages

## room_users テーブル

| Column   | Type       | Options                       |
| -------- | ------     | ----------------------------  |
| user_id  | references | null: false,foreign_key: true |
| room_id  | references | null: false,foreign_key: true |

### Association
- belongs_to :room
- belongs_to :user

## messages テーブル

| Column   | Type       | Options                       |
| -------- | ------     | ----------------------------  |
| content      | string |
| user_id  | references | null: false,foreign_key: true |
| room_id  | references | null: false,foreign_key: true |

### Association
- belongs_to :room
- belongs_to :user

<!-- 
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... --> 
