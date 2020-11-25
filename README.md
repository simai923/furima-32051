# テーブル設計

## users テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| nickname     | string | null: false |
| email        | string | null: false |
| password     | string | null: false |
| last_name    | string | null: false |
| first_name   | string | null: false |
| last_name_k  | string | null: false |
| first_name_k | string | null: false |
| birth_date   | date   | null: false |

### Association

- has_many :items
- has_many :orders
- has_one :address

## items テーブル

| Column            | Type       | Options                   |
| ----------------- | ---------- | ------------------------- |
| product_name      | string     | null: false               |
| description       | text       | null: false               |
| condition_id      | string     | null: false, unique: true |
| ship_cost_id      | string     | null: false, unique: true |
| ship_from_area-id | string     | null: false, unique: true |
| ship_days_id      | integer    | null: false, unique: true |
| price             | integer    | null: false               |
| user              | references | foreign_key: true         |

### Association

- belongs_to :user
- has_one :order

## order テーブル

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| purchase_date | timestamp  | null: false       |
| users         | references | foreign_key: true |
| items         | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| prefecture    | string     | null: false |
| city          | string     | null: false |
| block_number  | integer    | null: false |
| building_name | string     |             |
| phone_number  | integer    | null: false |
| users         | references | foreign_key: true |
| items         | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :order
