# テーブル設計

## users テーブル

| Column             | Type   | Options               |
| ------------------ | ------ | --------------------- |
| nickname           | string | null: false           |
| email              | string | null: false           |
| encrypted_password | string | null: false           |
| last_name          | string | null: false           |
| first_name         | string | null: false           |
| last_name_k        | string | null: false           |
| first_name_k       | string | null: false           |
| birth_date         | date   | null: false           |

### Association

- has_many :items
- has_many :orders
- has_one :address

## items テーブル

| Column            | Type       | Options           |
| ----------------- | ---------- | ----------------- |
| name              | string     | null: false       |
| description       | text       | null: false       |
| condition_id      | integer    | null: false       |
| ship_cost_id      | integer    | null: false       |
| ship_from_area_id | integer    | null: false       |
| ship_day_id       | integer    | null: false       |
| price             | integer    | null: false       |
| user              | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## order テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| item   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| postal_code   | integer    | null: false       |
| prefecture_id | integer    | null: false       |
| city          | string     | null: false       |
| address       | string     | null: false       |
| building_name | string     |                   |
| phone_number  | string     | null: false       |
| order         | references | foreign_key: true |


### Association

- belongs_to :order
