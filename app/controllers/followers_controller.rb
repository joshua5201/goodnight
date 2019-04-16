class FollowersController < ApplicationController
  before_action :find_user
  before_action :auth_user, only: [:create]

  def index
    render json: @user.followers
  end

  def create
    if @user.followers.where(id: @current_user.id).blank?
      @user.followers << @current_user
    end
    render json: @user.followers
  end

  def show
    render json: @user
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
