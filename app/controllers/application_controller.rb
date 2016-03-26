class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :already_logged_in

  def already_logged_in
    redirect_to root_path if logged_in?
  end

  def require_login
    unless logged_in?
      flash[:error] = 'You must be logged.'
      redirect_to new_session_path
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
