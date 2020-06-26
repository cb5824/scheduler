class RequestsController < ApplicationController
  before_action :authenticate_user!
  COLOR_ARRAY = [["#ffffff", "color_ffffff"],
    ["#ff1100", "color_ff1100"],
    ["#f2bb07", "color_f2bb07"],
    ["#fc9d0f", "color_fc9d0f"],
    ["#bf7e1d", "color_bf7e1d"],
    ["#531199", "color_531199"],
    ["#249ee0", "color_249ee0"],
    ["#24290f", "color_24290f"],
    ["#187d3f", "color_187d3f"],
    ["#0a5cad", "color_0a5cad"],
    ["#e30eca", "color_e30eca"]]

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

  WORKER_ARRAY = [['', 'none'],
        ['Ambassador', 'A'],
        ['Blue Flag', 'B'],
        ['Signal Tech', 'E'],
        ['Signal Inspector', 'S'],
        ['Maintainer', 'M'],
        ['No Protection Required', 'O'],
        ['Pilot', 'P'],
        ['Test Train', 'Q'],
        ['Radio Tech', 'R'],
        ['Work Train', 'T'],
        ['UP Flagman', 'U'],
        ['Watchman', 'W'],
        ['Flagger (RWIC)', 'X'],
        ['Track Inspector', 'Y'],
        ['Stabilizer', 'Z'],
        ['Shared Flagger', 'sX'],
        ['Shared Watchman', 'sW'],
        ['Shared Maintainer', 'sM']]

  def index

    setweek
    @user = current_user

    @requests = Request.where(nil)
    if filtering_params(params).keys.length == 0
      @requests = Request.where(year: @thisyear, week: @thisweek)
    else
      filtering_params(params).each do |key, value|
        @requests = @requests.public_send("filter_by_#{key}", value) if value.present?
      end
    end

    @approved_only = (params["approved_only"] == "true")
    @hide_cancelled = (params["hide_cancelled"] == "true")


    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=Requests.xlsx"
      }
      format.html { render :index }
    end

  end

  def new
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
    @color_options = COLOR_ARRAY
    if params[:copyfrom]
      temp = Request.where(id: params[:copyfrom])[0]
      @request = temp.dup
      if @request.monday_hash["cancelled"] == "yes"
        @request.monday_hash = {}
      end
      if @request.tuesday_hash["cancelled"] == "yes"
        @request.tuesday_hash = {}
      end
      if @request.wednesday_hash["cancelled"] == "yes"
        @request.wednesday_hash = {}
      end
      if @request.thursday_hash["cancelled"] == "yes"
        @request.thursday_hash = {}
      end
      if @request.friday_hash["cancelled"] == "yes"
        @request.friday_hash = {}
      end
      if @request.saturday_hash["cancelled"] == "yes"
        @request.saturday_hash = {}
      end
      if @request.sunday_hash["cancelled"] == "yes"
        @request.sunday_hash = {}
      end
    else
      @request = Request.new
    end
    @request.requestor_name = current_user.name
    @request.requestor_email = current_user.email
    @request.requestor_phone = current_user.phone
    @request.contractor = current_user.company
end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @request.monday_hash["cancelled"] = "no"
    @request.tuesday_hash["cancelled"] = "no"
    @request.wednesday_hash["cancelled"] = "no"
    @request.thursday_hash["cancelled"] = "no"
    @request.friday_hash["cancelled"] = "no"
    @request.saturday_hash["cancelled"] = "no"
    @request.sunday_hash["cancelled"] = "no"
    if request_params[:attachments]
      @request.attachments.attach(request_params[:attachments])
    end
    if @request.save
      @request.update_weekly
      @request.weekly.save
      @request.approval = Approval.new
      @request.approval.save
      @request.pending = Pending.new
      @request.pending.save
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
    @notes = @request.notes.sort_by { |entry| entry.created_at }
  end

  def edit
    @action = "edit"
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
    @color_options = COLOR_ARRAY
  end

  def update
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    @cp_options = CP_ARRAY
    @worker_options = WORKER_ARRAY
    @color_options = COLOR_ARRAY

    @request2 = Request.new(request_params)
    @request2[:id] = @request[:id]
    @request2[:created_at] = @request[:created_at]
    @request2[:updated_at] = @request[:updated_at]
    @request2[:user_id] = @request[:user_id]

    if (@request.mon == 1 && @request2.mon != 1) || (@request.monday_hash["cancelled"] == "yes" && @request2.mon = 0)
      @request2.monday_hash["cancelled"] = "yes"
    else
      @request2.monday_hash["cancelled"] = "no"
    end
    if (@request.tue == 1 && @request2.tue != 1) || (@request.tuesday_hash["cancelled"] == "yes" && @request2.tue = 0)
      @request2.tuesday_hash["cancelled"] = "yes"
    else
      @request2.tuesday_hash["cancelled"] = "no"
    end
    if (@request.wed == 1 && @request2.wed != 1) || (@request.wednesday_hash["cancelled"] == "yes" && @request2.wed = 0)
      @request2.wednesday_hash["cancelled"] = "yes"
    else
      @request2.wednesday_hash["cancelled"] = "no"
    end
    if (@request.thu == 1 && @request2.thu != 1) || (@request.thursday_hash["cancelled"] == "yes" && @request2.thu = 0)
      @request2.thursday_hash["cancelled"] = "yes"
    else
      @request2.thursday_hash["cancelled"] = "no"
    end
    if (@request.fri == 1 && @request2.fri != 1) || (@request.friday_hash["cancelled"] == "yes" && @request2.fri = 0)
      @request2.friday_hash["cancelled"] = "yes"
    else
      @request2.friday_hash["cancelled"] = "no"
    end
    if (@request.sat == 1 && @request2.sat != 1) || (@request.saturday_hash["cancelled"] == "yes" && @request2.sat = 0)
      @request2.saturday_hash["cancelled"] = "yes"
    else
      @request2.saturday_hash["cancelled"] = "no"
    end
    if (@request.sun == 1 && @request2.sun != 1) || (@request.sunday_hash["cancelled"] == "yes" && @request2.sun = 0)
      @request2.sunday_hash["cancelled"] = "yes"
    else
      @request2.sunday_hash["cancelled"] = "no"
    end
    if (@request2.mon == 0 && @request2.tue == 0 && @request2.wed == 0 && @request2.thu == 0 && @request2.fri == 0 && @request2.sat == 0 && @request2.sun == 0)
      binding.pry
      @request.cancelled = 1
      @request.save
    else


    @request.generate_changelog(@request2, @user)
    @request.pending.change(@request2)
    @request.pending.save

    if  ["admin_notes_mon", "admin_notes_tue", "admin_notes_wed", "admin_notes_thu", "admin_notes_fri", "admin_notes_sat", "admin_notes_sun"].any? {|note| (@request.attributes.to_a - @request2.attributes.to_a).map(&:first).include?(note)}
      @request.update_attributes(request_params)
    else
      @request.update_attributes(request_params)
      @request.update_attribute(:status, 'pending')
    end
      @request.monday_hash["cancelled"] = @request2.monday_hash["cancelled"]
      @request.tuesday_hash["cancelled"] = @request2.tuesday_hash["cancelled"]
      @request.wednesday_hash["cancelled"] = @request2.wednesday_hash["cancelled"]
      @request.thursday_hash["cancelled"] = @request2.thursday_hash["cancelled"]
      @request.friday_hash["cancelled"] = @request2.friday_hash["cancelled"]
      @request.saturday_hash["cancelled"] = @request2.saturday_hash["cancelled"]
      @request.sunday_hash["cancelled"] = @request2.sunday_hash["cancelled"]

        @request.pending.change(@request2)
        @request.update_weekly
        @request.weekly.save
        @request.save
    if request_params[:attachments]
      @request.attachments.attach(request_params[:attachments])
    end
    @request.pending.save
    flash[:notice] = "Request updated. Status changed to Pending Approval!"
  end
    redirect_to @request
  end

  def approve
    @request = Request.find(params[:request_id])
    @user = current_user
    if @user.approval_group == 1
      old_status = @request.approval1
    elsif   @user.approval_group == 2
      old_status = @request.approval2
    elsif   @user.approval_group == 3
      old_status = @request.approval3
    elsif   @user.approval_group == 4
      old_status = @request.approval4
    end
    if params[:new_status] == 'approved'
      if @user.approval_group == 1
        @request.update_attribute(:approval1, 'approved')
      elsif   @user.approval_group == 2
        @request.update_attribute(:approval2, 'approved')
      elsif   @user.approval_group == 3
        @request.update_attribute(:approval3, 'approved')
      elsif   @user.approval_group == 4
        @request.update_attribute(:approval4, 'approved')
      end
      flash[:notice] = "Request approved!"
    elsif params[:new_status] == 'pending'
      if @user.approval_group == 1
        @request.update_attribute(:approval1, 'pending')
      elsif   @user.approval_group == 2
        @request.update_attribute(:approval2, 'pending')
      elsif   @user.approval_group == 3
        @request.update_attribute(:approval3, 'pending')
      elsif   @user.approval_group == 4
        @request.update_attribute(:approval4, 'pending')
      end
      flash[:notice] = "Request set to pending approval!"
    elsif params[:new_status] == 'rejected'
      if @user.approval_group == 1
        @request.update_attribute(:approval1, 'rejected')
      elsif   @user.approval_group == 2
        @request.update_attribute(:approval2, 'rejected')
      elsif   @user.approval_group == 3
        @request.update_attribute(:approval3, 'rejected')
      elsif   @user.approval_group == 4
        @request.update_attribute(:approval4, 'rejected')
      end
      flash[:notice] = "Request rejected!"
    end

    @request.generate_approval_log(current_user, old_status, params[:new_status])
    @request.approval_check
    redirect_to @request

  end

  def note
    @request = Request.find(params[:note][:request_id])
    @user = current_user
    @request.generate_note(@user, params[:note][:body])
    redirect_to @request
  end

  def cancel
    @request = Request.find(params[:request_id])
    if @request.cancelled == 0
      @request.update_attribute(:cancelled, 1)
    elsif @request.cancelled == 1
      @request.update_attribute(:cancelled, 0)
    end
    redirect_to @request
  end

  def setweek
    if params["week"] && params["year"]
      @thisweek = params["week"]
      @thisyear = params["year"]
    elsif params["filter_week"] && params["filter_year"]
      @thisweek = params["filter_week"]
      @thisyear = params["filter_year"]
    else
      @thisweek = Date.today.cweek
      @thisyear = Date.today.cwyear
    end
  end

  def filtering_params(params)
    params.slice(:night_work, :single_tracking, :mt1, :mt2, :mt3, :mt4, :other, :taw, :form_b, :form_c, :track_and_time, :contractor, :rwp, :ocs, :disturb, :rrm, :foul, :crossings, :underground, :flagging, :week, :year)
  end

  def request_params
    params.require(:request).permit(:year, :week, :start_time, :end_time, :cp1, :mp1, :cp2, :mp2, :contractor, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :description, :single_track, :requestor_name, :requestor_email, :requestor_phone, :requestor_project, :requestor_work_directive, :mon, :tue, :wed, :thu, :fri, :sat, :sun, :night_work, :MT1, :MT2, :MT3, :MT4, :taw, :form_b, :form_c, :track_and_time, :title, :sswps, :change_notices, :rwp, :ocs, :disturb, :rrm, :foul, :crossings, :underground, :flagging, :late_reason, :rush_reason, :change_reason, :status, :approval1, :approval2, :approval3, :approval4, :archived, :color, :admin_notes_mon, :admin_notes_tue, :admin_notes_wed, :admin_notes_thu, :admin_notes_fri, :admin_notes_sat, :admin_notes_sun, :requestor_notes_mon, :requestor_notes_tue, :requestor_notes_wed, :requestor_notes_thu, :requestor_notes_fri, :requestor_notes_sat, :requestor_notes_sun, :inspector_notes_mon, :inspector_notes_tue, :inspector_notes_wed, :inspector_notes_thu, :inspector_notes_fri, :inspector_notes_sat, :inspector_notes_sun, :monday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled],:tuesday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], :wednesday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], :thursday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], :friday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], :saturday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], :sunday_hash => [:start_time, :end_time, :cp1, :cp2, :mp1, :mp2, :MT1, :MT2, :MT3, :MT4, :other, :inacc_track, :b_time, :b_location, :b_name_number, :taw, :form_b, :form_c, :track_and_time, :single_track, :worker_primary, :worker_secondary1, :worker_secondary2, :worker_secondary3, :worker_secondary4, :worker_secondary5, :cancelled], attachments: [])
  end
end
