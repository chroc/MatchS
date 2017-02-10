class LandingPageController < ApplicationController

  def index
    #..
  end

  def home
    @matches = Match.all
  end

end
