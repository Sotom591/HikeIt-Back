class PackingListsController < ApplicationController
  def index
      render json: PackingList.all
  end

  def show
    render json: PackingList.find(params[:id])
  end

  private
    def packing_list_params
      params.require(:packing_list).permit(:title)
    end
end
