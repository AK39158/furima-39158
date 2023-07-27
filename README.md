# README
# アプリ名

フリマアプリ
<br>
<br>

# ER 図

![ER図]https://gyazo.com/be32d156486ab3579ff2df0078af4878

# テーブル設計

## Usersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| nickname  | string | null: false, unique: true |
| email   | string | null: false, unique: true|
| encrypted_password  | string | null: false, unique: true |
| family_name  | string | null: false |
| first_name  | string | null: false |
| family_name_kana  | string | null: false |
| family_name_kana  | string | null: false |
| birth_date | date | null: false |

#### Association

- has_many :items
- has_many :orders

<br>

## Itemsテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name  | string | null: false |
| introduction  | text | null: false |
| price  | integer | null: false |
| category_id  | integer | null: false |
| item_condition_id  | integer | null: false |
| shipping_cost_id  | integer | null: false |
| prefecture_id  | integer | null: false |
| shipping_date_id  | integer | null: false |

#### Association

- belongs_to :user
- has_one :order

<br>

## Ordersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| item  | references | null: false, foreign_key: true |
| user  | references | null: false, foreign_key: true |


#### Association

- belongs_to :user
- belongs_to :item
- has_one :addresser


<br>

## Addressersテーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| card_id  | string | null: false |
| post_code  | string | null: false |
| prefecture_id  | integer | null: false |
| city  | string | null: false |
| house_number  | string | null: false |
| building_name  | string |
| phone_number  | string | null: false |

#### Association

- belongs_to :order
