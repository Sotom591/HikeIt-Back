class HikingListsController < ApplicationController
  def index
    render json: HikingList.all
  end

  def show
    render json: HikingList.find(params[:id])
  end

  def create
    render json: HikingList.create(hiking_list_params)
  end

  def update
    HikingList.find(params[:id]).update(hiking_list_params)
    render json: HikingList.find(params[:id])
  end

  def destroy
    render json: HikingList.find(params[:id]).destroy
  end

  private
    def hiking_list_params
      params.require(:hiking_list).permit(:API_id, :name, :summary, :difficulty, :stars, :starVotes, :location, :imgSmall, :imgMedium, :length, :ascent, :descent, :high, :low, :longitude, :latitude)
    end
end
