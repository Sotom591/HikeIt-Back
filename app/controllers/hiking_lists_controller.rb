class HikingListsController < ApplicationController
  def index
    render json: HikingList.all
  end

  # private
  #   def user_params
  #     params.require(:hiking_list).permit(:trail)
  #   end
end

# t.integer :API_id
# t.string :name
# t.string :summary
# t.string :difficulty
# t.integer :stars
# t.integer :starVotes
# t.string :location
# t.string :imgSmall
# t.string :imgMedium
# t.integer :length
# t.integer :ascent
# t.integer :descent
# t.integer :high
# t.integer :low
# t.integer :longitude
# t.integer :latitude
