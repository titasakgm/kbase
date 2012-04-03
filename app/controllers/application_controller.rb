class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    redirect_to login_path if current_user.nil?
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def is_admin?
      if current_user and current_user.email == 'titasak@gmail.com'
        true
      else
        false
      end
    end

  helper_method :current_user, :is_admin?
end
