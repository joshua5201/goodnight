class SleepsController < ApplicationController
  def index
    render json: Sleep.joins(:user).where(users: {name: params[:username]}).order(start_time: :desc)
  end
end
