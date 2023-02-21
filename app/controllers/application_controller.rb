class ApplicationController < ActionController::Base
  before_action :set_user

  def set_user
    @user = User.find_by(id: session[:user_id])
  end
  def require_login
    @user = User.find_by(id: session[:user_id])
    redirect_to new_login_path unless @user
  end
  def authenticated(user)
    @user = user
  end
  def logged_out
    @user = nil
  end
end
