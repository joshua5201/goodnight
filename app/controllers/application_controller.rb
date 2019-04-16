class ApplicationController < ActionController::API
  protected
  def auth_user
    user = User.find_by(name: params[:username])
    if user.nil?
      render(json: {error: "auth error"})
      throw :abort
    end
    @current_user = user
  end
end
