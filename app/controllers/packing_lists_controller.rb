class PackingListsController < ApplicationController
  def index
      render json: PackingList.all
  end

  def show
    render json: PackingList.find(params[:id])
  end

  def create
    render json: PackingList.create(packing_list_params)
  end

  def update
    PackingList.find(params[:id]).update(packing_list_params)
    render json: PackingList.find(params[:id])
  end

  def destroy
    render json: PackingList.find(params[:id]).destroy
  end


  private
    def packing_list_params
      params.require(:packing_list).permit(:title, :user_id)
    end
end
