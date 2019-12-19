class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    binding.pry

    @request = Request.new(request_params)
  end

  def request_params
    params.require(:request)
  end
end
