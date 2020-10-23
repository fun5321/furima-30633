## users テーブル

| Column   | Type   | Options     |
|--------- |--------|------------ |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :items_users
- has_many :buys

## items テーブル

| Colum               | Type    | Option      |
|---------------------|---------|-------------|
| name                | string  | null: false |
| info                | text    | null: false |
| cotegory            | string  | null: false |
| sales_status        | string  | null: false |
| shippng_fee_status  | string  | null: false |
| prefecture          | string  | null: false |
| scheduled_delivery  | string  | null: false |
| price               | integer | null: false |

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

### Association

- belongs_to :buy

