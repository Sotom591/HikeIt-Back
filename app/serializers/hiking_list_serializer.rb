class HikingListSerializer < ActiveModel::Serializer
  attributes :id, :API_id, :name, :summary, :difficulty, :stars, :starVotes, :location, :imgSmall, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude
    belongs_to :user
end
