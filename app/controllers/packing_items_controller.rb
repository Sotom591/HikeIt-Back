class PackingItemsController < ApplicationController
  def index
      render json: PackingItem.all
  end

  def show
    render json: PackingItem.find(params[:id])
  end

  def create
    render json: PackingItem.create(packing_item_params)
  end

  def update
    PackingItem.find(params[:id]).update(packing_item_params)
    render json: PackingItem.find(params[:id])
  end

  def destroy
    render json: PackingItem.find(params[:id]).destroy
  end

  private
    def packing_item_params
      params.require(:packing_item).permit(:name, :packed, :packing_list_id)
    end
end
