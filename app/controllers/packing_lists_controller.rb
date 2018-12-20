class PackingListsController < ApplicationController
  def index
      render json: PackingList.all
  end

  private
    def packing_list_params
      params.require(:packing_list).permit(:title)
    end
end
