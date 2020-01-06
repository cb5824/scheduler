class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @requests = Request.all
  end

  def new
    @user = current_user
  end

  def create
    binding.pry
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
    params.require(:request).permit(:requestor_name, :requestor_email, :requestor_phone, :requestor_project, :requestor_work_directive, :year, :week, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :start_time, :end_time, :night_work, :cp1, :mp1, :cp2, :mp2, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :single_track, :MT1, :MT2, :MT3, :MT4, :taw, :form_b, :form_c, :track_and_time, :title, :description, :sswps, :change_notices, :rwp, :ocs, :disturb, :rrm, :foul, :crossings, :underground, :flagging, :late_reason, :rush_reason, :change_reason, :contractor)
  end
end
