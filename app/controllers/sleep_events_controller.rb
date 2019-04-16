class SleepEventsController < ApplicationController
  def create
    user = User.find_or_create_by_name(params[:username])
    if user.nil?
      return render(json: {error: "auth error"})
    end

    sleep = Sleep.joins(:user).where(users: {name: params[:username]}).order(start_time: :desc).first
    if sleep.sleeping?
      sleep.update(end_time: DateTime.now)
      render(json: {
        event: "wakeup",
        sleep: sleep,
      })
    else
      sleep = Sleep.create(start_time: DateTime.now, user: user)
      render(json: {
        event: "sleep",
        sleep: sleep,
      })
    end
  end
end
