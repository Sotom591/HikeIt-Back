class PackingListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id
  has_many :packing_items
  belongs_to :user
end
