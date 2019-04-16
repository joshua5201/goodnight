class User::FollowersController < ApplicationController
  before_action :auth_user

  def index
    render json: @current_user.followers
  end
end
