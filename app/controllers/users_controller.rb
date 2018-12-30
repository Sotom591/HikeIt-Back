require 'byebug'
class UsersController < ApplicationController
  def index
      render json: User.all
  end

  def profile
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]
    render json: {user: User.find(user_id) }, status: :accepted
  end

  def show
    render json: User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(:firstName, :lastName, :username, :avatar)
  end
end
