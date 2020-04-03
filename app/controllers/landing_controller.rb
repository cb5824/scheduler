class LandingController < ApplicationController

  def index
    if user_signed_in?
      @user = current_user
      redirect_to requests_url
    else
      @user = nil
    end
  end
end
