class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :sales_status_id
  belongs_to_active_hash :shipping_fee_status_id
  belongs_to_active_hash :prefecture_id
  belongs_to_active_hash :scheduled_delivery_id

  validates :category, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id, presence: true
  validates :category_id, :sales_status_id, :shipping_fee_status_id, :prefecture_id, :scheduled_delivery_id, numericality: { other_than: 1 } 


end
