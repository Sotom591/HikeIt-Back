class HikingListSerializer < ActiveModel::Serializer
  attributes :id, :trail, :user_id
    belongs_to :user
end
