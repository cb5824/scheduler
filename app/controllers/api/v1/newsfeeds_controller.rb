class Api::V1::NewsfeedsController < ApplicationController

  def update
  end

  def show
  end

  def new
  end

  def index
    if Newsfeed.where(week: params["week"], year: params["year"]) == []
      update = Newsfeed.new
    else
      update = Newsfeed.where(week: params["week"], year: params["year"])[0]
    end
    update.contents = params["text"]
    update.week = params["week"]
    update.year = params["year"]
    update.save
  end

end
