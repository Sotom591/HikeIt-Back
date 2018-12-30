class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :username, :avatar
  has_many :packing_lists
  has_many :packing_items
  has_many :hiking_lists
end
