class User < ApplicationRecord
  has_many :hiking_lists
  has_many :packing_lists
  has_many :packing_items, through: :packing_lists
end
