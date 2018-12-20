class PackingItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :packed, :packing_list_id
    belongs_to :packing_list
end
