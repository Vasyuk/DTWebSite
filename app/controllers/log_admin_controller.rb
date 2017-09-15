class LogAdminController < ActionController::Base

  def log_in
    @user = User.all
  end

end
