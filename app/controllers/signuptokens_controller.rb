class SignuptokensController < ApplicationController

  def new
  end

  def index
    Signuptoken.all.each do |t|
      t.destroy
    end
    redirect_to profiles_path
  end

  def update
  end

  def create
  end

end
