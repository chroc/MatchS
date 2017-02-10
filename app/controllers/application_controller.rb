class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def require_login
    if session[:current_user_id].nil?
      redirect_to '/'
    end
  end
end
