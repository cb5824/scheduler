class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
    @request = Request.new(request_params)
    binding.pry
  end

  def request_params
    params.require(:request).permit(:year, :week, :start_time, :end_time, :cp1, :mp1, :cp2, :mp2, :contractor, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :single_track, :night_work, :description)
  end
end
