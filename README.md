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
| email   | string | null: false, unique: true|
| encrypted_password  | string | null: false |
| family_name  | string | null: false |
| first_name  | string | null: false |
| family_name_kana  | string | null: false |
| family_name_kana  | string | null: false |
| birth_date | date | null: false |

## itemsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name  | string | null: false |
| introduction  | text | null: false |
| price  | integer | null: false |
| category_id  | integer | null: false |
| item_condition  | integer | null: false |
| postage_payer  | integer | null: false |
| trading_status  | integer | null: false |
| preparation_day  | integer | null: false |
| user_id  | references | null: false|

## ordersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| card_id  | string | null: false |
| post_code  | string | null: false |
| prefecture  | string | null: false |
| city  | string | null: false |
| house_number  | string | null: false |
| building_name  | string |
| phone_number  | string | unique: true |

## imagesテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| item_id  | references | null: false |
| purchase_id  | references | null: false|