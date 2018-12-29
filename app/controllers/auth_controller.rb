class AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: {message: "correct username & password"}, status: :accepted
      # redirect to: :profile
    else
      render json: {message: "incorrect! are you a h3cker?!"}, status: :unauthorized
      # redirect to: :home
    end
  end


end
