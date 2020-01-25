class RequestsController < ApplicationController
  before_action :authenticate_user!
  CP_ARRAY = [['N.L. CP 4th', 1],
        ['S.L. CP 4th', 2],
        ['N.L. CP Common', 3],
        ['S.L. CP Common', 4],
        ['N.L. CP Army', 5],
        ['S.L. CP Army', 6],
        ['N.L. CP Tunnel', 7],
        ['S.L. CP Tunnel', 8],
        ['N.L. CP Geneva', 9],
        ['S.L. CP Geneva', 10],
        ['N.L. CP Brisbane', 11],
        ['S.L. CP Brisbane', 12],
        ['N.L. CP Sierra', 13],
        ['S.L. CP Sierra', 14],
        ['N.L. CP Scott', 15],
        ['S.L. CP Scott', 16],
        ['N.L. CP Center', 17],
        ['S.L. CP Center', 18],
        ['N.L. CP Bart', 19],
        ['S.L. CP Bart', 20],
        ['N.L. CP Trousdale', 21],
        ['S.L. CP Trousdale', 22],
        ['N.L. CP Palm', 23],
        ['S.L. CP Palm', 24],
        ['N.L. CP Ralston', 25],
        ['S.L. CP Ralston', 26],
        ['N.L. CP Dumbarton', 27],
        ['S.L. CP Dumbarton', 28],
        ['N.L. CP Junction', 29],
        ['S.L. CP Junction', 30],
        ['N.L. CP Alma', 31],
        ['S.L. CP Alma', 32],
        ['N.L. CP Mayfield', 33],
        ['S.L. CP Mayfield', 34],
        ['N.L. CP Mary', 35],
        ['S.L. CP Mary', 36],
        ['N.L. CP Hendy', 37],
        ['S.L. CP Hendy', 38],
        ['N.L. CP Bowers', 39],
        ['S.L. CP Bowers', 40],
        ['N.L. CP De La Cruz', 41],
        ['S.L. CP De La Cruz', 42],
        ['N.L. CP Coast', 43],
        ['S.L. CP Coast', 44],
        ['N.L. CP Franklin', 45],
        ['S.L. CP Franklin', 46],
        ['N.L. CP Stockton', 47],
        ['S.L. CP Stockton', 48],
        ['N.L. CP Shark', 49],
        ['S.L. CP Shark', 50],
        ['N.L. CP Alameda', 51],
        ['S.L. CP Alameda', 52],
        ['N.L. CP Bird', 53],
        ['S.L. CP Bird', 54],
        ['N.L. CP Delmas', 55],
        ['S.L. CP Delmas', 56],
        ['N.L. CP Mack', 57],
        ['S.L. CP Mack', 58],
        ['N.L. CP Michael', 59],
        ['S.L. CP Michael', 60],
        ['N.L. CP Lick', 61],
        ['S.L. CP Lick', 62]]

  WORKER_ARRAY = [['', 1],
        ['Ambassador', 2],
        ['Blue Flag', 3],
        ['Signal Tech', 4],
        ['Signal Inspector', 5],
        ['Maintainer', 6],
        ['No Protection Required', 7],
        ['Pilot', 8],
        ['Test Train', 9],
        ['Radio Tech', 10],
        ['Work Train', 11],
        ['UP Flagman', 12],
        ['Watchman', 13],
        ['Flagger (RWIC)', 14],
        ['Track Inspector', 15],
        ['Stabilizer', 16],
        ['Shared Flagger', 17],
        ['Shared Watchman', 18],
        ['Shared Maintainer', 19]]

  def index
    @user = current_user
    @requests = Request.all
  end

  def new
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
    @request = Request.new
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

  def show
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    @entries = @request.changelogs.sort_by { |entry| entry.created_at }
  end

  def edit
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
  end

  def update
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
    @request2 = Request.new(request_params)
    @request2[:id] = @request[:id]
    @request2[:created_at] = @request[:created_at]
    @request2[:updated_at] = @request[:updated_at]
    @request2[:user_id] = @request[:user_id]

    @request.generate_changelog(@request2, @user)

    @request.update_attributes(request_params)
    @request.update_attribute(:status, 'pending')
    flash[:notice] = "Request updated. Status changed to Pending Approval!"
    redirect_to action: "edit", id: @request.id
  end

  def approve
    @request = Request.find(params[:request_id])
    if params[:new_status] == 'approved'
      @request.update_attribute(:status, 'approved')
      flash[:notice] = "Request approved!"
    elsif params[:new_status] == 'pending'
      @request.update_attribute(:status, 'pending')
      flash[:notice] = "Request set to pending approval!"
    elsif params[:new_status] == 'rejected'
      @request.update_attribute(:status, 'rejected')
      flash[:notice] = "Request rejected!"
    end
    redirect_to @request
  end

  def request_params
    params.require(:request).permit(:requestor_name, :requestor_email, :requestor_phone, :requestor_project, :requestor_work_directive, :year, :week, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :start_time, :end_time, :night_work, :cp1, :mp1, :cp2, :mp2, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :single_track, :MT1, :MT2, :MT3, :MT4, :taw, :form_b, :form_c, :track_and_time, :title, :description, :sswps, :change_notices, :rwp, :ocs, :disturb, :rrm, :foul, :crossings, :underground, :flagging, :late_reason, :rush_reason, :change_reason, :contractor, :status, :id)
  end
end
