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

* ...
## usersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| nickname  | string | null: false |
| email   | string | null: false, foreign_key: true uni: true|
| encrypted_password  | string | null: false |
| family_name  | string | null: false |
| first_name  | string | null: false |
| family_name_kana  | string | null: false |
| family_name_kana  | string | null: false |
| post_code  | string | null: false |
| city  | string | null: false |
| house_number  | string | null: false |
| building_name  | string |
| phone_number  | string | unique: true |
| birth_date | date | null: false |

## itemsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| image  | references | null: false |
| name  | string | null: false |
| introduction  | text | null: false |
| price  | integer | null: false |
| category  | integer | null: false |
| item_condition  | integer | null: false |
| postage_payer  | integer | null: false |
| trading_status  | integer | null: false |
| seller  | references | null: false|