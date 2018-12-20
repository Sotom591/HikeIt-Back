class HikingListsController < ApplicationController
  def index
    render json: HikingList.all
  end

  private
    def user_params
      params.require(:hiking_list).permit(:trail)
    end
end
