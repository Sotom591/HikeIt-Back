class AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: {
      message: "correct username & password",
      user_info: @user,
      error: false
    },
      status: :accepted
      # redirect to: :profile
    else
      render json: {
      message: "incorrect! are you a h3cker?!",
      error: true
    },
      status: :unauthorized
      # redirect to: :home
    end
  end


end
