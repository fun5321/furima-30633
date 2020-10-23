## users テーブル

| Column          | Type   | Options     |
|---------------- |--------|------------ |
| nickname        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| myouji          | string | null: false |
| name            | string | null: false |
| myouji_hurigana | string | null: false |
| name_hurigana   | string | null: false |
| birthday        | date   | null: false |


### Association

- has_many :items
- has_many :buys

## items テーブル

| Colum                 | Type    | Options     |
|-----------------------|---------|-------------|
| name                  | string  | null: false |
| info                  | text    | null: false |
| cotegory_id           | integer | null: false |
| sales_status_id       | integer | null: false |
| shippng_fee_status_id | integer | null: false |
| prefecture_id         | integer | null: false |
| scheduled_delivery_id | integer | null: false |
| price                 | integer | null: false |

### Association

- has_one :buy
- belongs_to :user

## buys テーブル

| Colum   | Type    | Options                       |
|---------|---------|-------------------------------|
| item_id | integer | null: false, foreign_key: true|
| user_id | integer | null: false, foreign_key: true|

### Association

- has_one :address
- belongs_to :item
- belomgs_to :user

## addresses テーブル

| Column           | Type    | Options     |
| -----------------| ------- | ----------- |
| shipping_address | string  | null: false |
| postal_code      | string  | null: false |
| prefectures      | string  | null: false |
| minicipalities   | string  | null: false |
| address          | string  | null: false |
| building_name    | string  | null: false |  
| phone_number     | string  | null: false |

### Association

- belongs_to :buy

