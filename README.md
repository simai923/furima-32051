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

## items テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| product        | string     | null: false |
| description    | text       | null: false |
| condition      | string     | null: false |
| ship_cost      | string     | null: false |
| ship_from_area | string     | null: false |
| ship_days      | integer    | null: false |
| price          | integer    | null: false |
| user_id        | references | null: false |

### Association

- belongs_to :users
- has_one :order

## orders テーブル

| Column                 | Type       | Options     |
| ---------------------- | ---------- | ----------- |
| card_number            | integer    | null: false |
| exp_month              | integer    | null: false |
| exp_year               | integer    | null: false |
| card_verification_cord | integer    | null: false |
| postal_cord            | integer    | null: false |
| prefecture             | string     | null: false |
| city                   | string     | null: false |
| block_number           | integer    | null: false |
| building_name          | string     |             |
| phone_number           | integer    | null: false |
| users_id               | references | null: false |
| items_id               | references | null: false |

### Association

- belongs_to :user
- belongs_to :order
