class LandingController < ApplicationController

  # this makes sense, but unless you're going to redirect_to a login screen, i thknk this'll
  # just break? If that's what you want, raise an error here to make their shit explode
  # and stop execution.
  
  def index
    if user_signed_in?
      @user = current_user
      redirect_to requests_url
    else
      @user = nil
    end
  end
end
