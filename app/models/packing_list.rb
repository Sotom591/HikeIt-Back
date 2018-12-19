class PackingList < ApplicationRecord
  belongs_to :user
  has_many :packing_items
end
