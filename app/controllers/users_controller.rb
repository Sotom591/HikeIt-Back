class UsersController < ApplicationController
  def index
      render json: User.all
  end

private
  def user_params
    params.require(:user).permit(:firstName, :lastName, :username)
  end
end
