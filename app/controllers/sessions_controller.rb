class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    #..
  end

  def create
    user = Player.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to "/home"
    else
      flash.now[:error] = 'incorrect email/password combo'
      render template: "landing_page/index"
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to "/"
  end

end
