class User::TimelineController < ApplicationController
  before_action :auth_user

  def index
    render json: Sleep.joins("INNER JOIN users_followers USING(user_id)").where(users_followers: {follower_id: @current_user.id}).order("(end_time - start_time) DESC")
  end
end
