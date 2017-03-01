class LandingPageController < ApplicationController
  skip_before_action :require_login, only: [:index]
  def index
    #..

  end

  def home
    @matches = Match.all
  end

end
