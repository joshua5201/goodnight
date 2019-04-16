class User::FollowingsController < ApplicationController
  before_action :auth_user

  def index
    render json: @current_user.following_users
  end
  
  def destroy
    @current_user.following_users.delete(params[:id])
    render json: @current_user.following_users
  end
end
