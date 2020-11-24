class Api::V1::NewsfeedsController < ApplicationController

  def update
  end

  def show
  end

  def new
  end

  def index
    binding.pry
    if Newsfeed.all == []
      update = Newsfeed.new
    else
      update = Newsfeed.all[0]
    end
    update.contents = params["text"]
    update.save
  end

end
