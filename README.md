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
| birthday        | string | null: false |


### Association

- has_many :items
- has_many :buys

## items テーブル

| Colum                 | Type    | Option      |
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

| Colum        | Type    | Option      |
|--------------|---------|-------------|
| item_payment | integer | null: false |
| credit_card  | string  | null: false |

### Association

- has_one :address
- belongs_to :item
- belomgs_to :user

## addresses テーブル

| Column           | Type    | Options     |
| -----------------| ------- | ----------- |
| shipping_address | string  | null: false |
| postal_code      | string  | null: false |
| street_address   | string  | null: false |
| phone_number     | string  | null: false |

### Association

- belongs_to :buy

