class PackingItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :packed, :packing_lists_id
    belongs_to :packing_list
end
