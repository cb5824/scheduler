class Api::V1::ApprovalsController < ApplicationController

  def update
    @request = Request.where(id: params["id"])[0]
    days = []
    status = ""
    group = []
    if params["change"] == "approve_all" || params["change"] == "reject_all"
      days = ["true", "true", "true", "true", "true", "true", "true"]
    elsif params["change"] == "approve_select" || params["change"] == "reject_select"
      days = [params["mon"], params["tue"], params["wed"], params["thu"], params["fri"], params["sat"], params["sun"]]
    end

    if params["change"] == "approve_select" || params["change"] == "approve_all"
      status = "approved"
    elsif params["change"] == "reject_select" || params["change"] == "reject_all"
      status = "rejected"
    end

    case params["emulate"]
    when "1"
      group << 1
    when "2"
      group << 2
    when "3"
      group << 3
    when "4"
      group << 4
    when "all"
      group << 1
      group << 2
      group << 3
      group << 4
    when "none"
      group << current_user.approval_group
    end

    group.each do |g|
      case g
      when 1
        if days[0] == "true" && @request.mon == 1
          @request.approval.group_1_mon = status
        end
        if days[1] == "true" && @request.tue == 1
          @request.approval.group_1_tue = status
        end
        if days[2] == "true" && @request.wed == 1
          @request.approval.group_1_wed = status
        end
        if days[3] == "true" && @request.thu == 1
          @request.approval.group_1_thu = status
        end
        if days[4] == "true" && @request.fri == 1
          @request.approval.group_1_fri = status
        end
        if days[5] == "true" && @request.sat == 1
          @request.approval.group_1_sat = status
        end
        if days[6] == "true" && @request.sun == 1
          @request.approval.group_1_sun = status
        end
      when 2
        if days[0] == "true" && @request.mon == 1
          @request.approval.group_2_mon = status
        end
        if days[1] == "true" && @request.tue == 1
          @request.approval.group_2_tue = status
        end
        if days[2] == "true" && @request.wed == 1
          @request.approval.group_2_wed = status
        end
        if days[3] == "true" && @request.thu == 1
          @request.approval.group_2_thu = status
        end
        if days[4] == "true" && @request.fri == 1
          @request.approval.group_2_fri = status
        end
        if days[4] == "true" && @request.sat == 1
          @request.approval.group_2_sat = status
        end
        if days[4] == "true" && @request.sun == 1
          @request.approval.group_2_sun = status
        end
      when 3
        if days[4] == "true" && @request.mon == 1
          @request.approval.group_3_mon = status
        end
        if days[4] == "true" && @request.tue == 1
          @request.approval.group_3_tue = status
        end
        if days[4] == "true" && @request.wed == 1
          @request.approval.group_3_wed = status
        end
        if days[4] == "true" && @request.thu == 1
          @request.approval.group_3_thu = status
        end
        if days[4] == "true" && @request.fri == 1
          @request.approval.group_3_fri = status
        end
        if days[4] == "true" && @request.sat == 1
          @request.approval.group_3_sat = status
        end
        if days[4] == "true" && @request.sun == 1
          @request.approval.group_3_sun = status
        end
      when 4
        if days[4] == "true" && @request.mon == 1
          @request.approval.group_4_mon = status
        end
        if days[4] == "true" && @request.tue == 1
          @request.approval.group_4_tue = status
        end
        if days[4] == "true" && @request.wed == 1
          @request.approval.group_4_wed = status
        end
        if days[4] == "true" && @request.thu == 1
          @request.approval.group_4_thu = status
        end
        if days[4] == "true" && @request.fri == 1
          @request.approval.group_4_fri = status
        end
        if days[4] == "true" && @request.sat == 1
          @request.approval.group_4_sat = status
        end
        if days[4] == "true" && @request.sun == 1
          @request.approval.group_4_sun = status
        end
      end
    end
    @request.approval.save
  end

end
