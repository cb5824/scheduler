class Api::V1::RequestsController < ApplicationController

  def update
    @request = Request.where(id: params[:id])[0]
    @user = current_user
    if params["rnotes"]
      case params["day"]
      when "mon"
        @request.requestor_notes_mon = params["rnotes"]
      when "tue"
        @request.requestor_notes_tue = params["rnotes"]
      when "wed"
        @request.requestor_notes_wed = params["rnotes"]
      when "thu"
        @request.requestor_notes_thu = params["rnotes"]
      when "fri"
        @request.requestor_notes_fri = params["rnotes"]
      when "sat"
        @request.requestor_notes_sat = params["rnotes"]
      when "sun"
        @request.requestor_notes_sun = params["rnotes"]
      end
    end
    if params["anotes"]
      case params["day"]
      when "mon"
        @request.admin_notes_mon = params["anotes"]
      when "tue"
        @request.admin_notes_tue = params["anotes"]
      when "wed"
        @request.admin_notes_wed = params["anotes"]
      when "thu"
        @request.admin_notes_thu = params["anotes"]
      when "fri"
        @request.admin_notes_fri = params["anotes"]
      when "sat"
        @request.admin_notes_sat = params["anotes"]
      when "sun"
        @request.admin_notes_sun = params["anotes"]
      end
    end
    if params["inotes"]
      case params["day"]
      when "mon"
        @request.inspector_notes_mon = params["inotes"]
      when "tue"
        @request.inspector_notes_tue = params["inotes"]
      when "wed"
        @request.inspector_notes_wed = params["inotes"]
      when "thu"
        @request.inspector_notes_thu = params["inotes"]
      when "fri"
        @request.inspector_notes_fri = params["inotes"]
      when "sat"
        @request.inspector_notes_sat = params["inotes"]
      when "sun"
        @request.inspector_notes_sun = params["inotes"]
      end
    end
    @request.save
  end


end
