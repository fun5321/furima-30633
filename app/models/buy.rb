class Buy < ApplicationRecord
  validates :item_id, presence: true
  validates :user_id, presence: true
end
