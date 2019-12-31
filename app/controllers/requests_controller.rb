class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @requests = Request.all
  end

  def new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to root_path, notice: 'Request was saved successfully'
    else
      @errors = @request.errors.full_messages
      render action: 'new'
    end
  end

  def request_params
    params.require(:request).permit(:year, :week, :start_time, :end_time, :cp1, :mp1, :cp2, :mp2, :contractor, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :single_track, :night_work, :description)
  end
end
