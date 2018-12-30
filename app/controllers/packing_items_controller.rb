class PackingItemsController < ApplicationController
  def index
      render json: PackingItem.all
  end

  def show
    render json: PackingItem.find(params[:id])
  end

  private
    def packing_item_params
      params.require(:packing_item).permit(:name)
    end
end
