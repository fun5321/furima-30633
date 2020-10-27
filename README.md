## users テーブル

| Column                | Type   | Options     |
|---------------------- |--------|------------ |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| encrypted_password    | string | null: false |
| name_myoji            | string | null: false |
| name_namae            | string | null: false |
| nick_reading_myoji    | string | null: false |
| nick_reading_namae    | string | null: false |
| birthday              | date   | null: false |


### Association

- has_many :items
- has_many :buys

## items テーブル

| Colum                 | Type       | Options                        |
|-----------------------|------------|--------------------------------|
| name                  | string     | null: false                    |
| info                  | text       | null: false                    |
| category_id           | integer    | null: false                    |
| sales_status_id       | integer    | null: false                    |
| shippng_fee_status_id | integer    | null: false                    |
| prefecture_id         | integer    | null: false                    |
| scheduled_delivery_id | integer    | null: false                    |
| price                 | integer    | null: false                    |
| user_id               | references | null: false, foreign_key: true |


### Association

- has_one :buy
- belongs_to :user

## buys テーブル

| Colum   | Type    | Options                        |
|---------|---------|--------------------------------|
| item_id | integer | null: false, foreign_key: true |
| user_id | integer | null: false, foreign_key: true |

### Association

- has_one :address
- belongs_to :item
- belomgs_to :user

## addresses テーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefectures_id   | integer    | null: false                    |
| city             | string     | null: false                    |
| house_number     | string     | null: false                    |
| building_name    | string     |                                |  
| phone_number     | string     | null: false                    | 
| user_id          | references | null: false, foreign_key: true |

### Association

- belongs_to :buy

