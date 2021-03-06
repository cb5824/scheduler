class Api::V1::ApprovalsController < ApplicationController

  def update
    @request = Request.where(id: params["id"])[0]
    days = []
    status = ""
    group = []
    if params["scope"] == "all"
      days = ["true", "true", "true", "true", "true", "true", "true"]
    elsif params["scope"] == "select"
      days = [params["mon"], params["tue"], params["wed"], params["thu"], params["fri"], params["sat"], params["sun"]]
    end

    if params["change"] == "1"
      status = "approved"
    elsif params["change"] == "2"
      status = "rejected"
    elsif params["change"] == "3"
      status = "pending"
    end

    if status != ""
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
          if days[5] == "true" && @request.sat == 1
            @request.approval.group_2_sat = status
          end
          if days[6] == "true" && @request.sun == 1
            @request.approval.group_2_sun = status
          end
        when 3
          if days[0] == "true" && @request.mon == 1
            @request.approval.group_3_mon = status
          end
          if days[1] == "true" && @request.tue == 1
            @request.approval.group_3_tue = status
          end
          if days[2] == "true" && @request.wed == 1
            @request.approval.group_3_wed = status
          end
          if days[3] == "true" && @request.thu == 1
            @request.approval.group_3_thu = status
          end
          if days[4] == "true" && @request.fri == 1
            @request.approval.group_3_fri = status
          end
          if days[5] == "true" && @request.sat == 1
            @request.approval.group_3_sat = status
          end
          if days[6] == "true" && @request.sun == 1
            @request.approval.group_3_sun = status
          end
        when 4
          if days[0] == "true" && @request.mon == 1
            @request.approval.group_4_mon = status
          end
          if days[1] == "true" && @request.tue == 1
            @request.approval.group_4_tue = status
          end
          if days[2] == "true" && @request.wed == 1
            @request.approval.group_4_wed = status
          end
          if days[3] == "true" && @request.thu == 1
            @request.approval.group_4_thu = status
          end
          if days[4] == "true" && @request.fri == 1
            @request.approval.group_4_fri = status
          end
          if days[5] == "true" && @request.sat == 1
            @request.approval.group_4_sat = status
          end
          if days[6] == "true" && @request.sun == 1
            @request.approval.group_4_sun = status
          end
        end
      end
      @request.approval.save
      @request.approval_check

    elsif params["change"] == "4"
      if params["scope"] == "all"
        @request.update_attribute(:cancelled, 1)
      else
        if days[0] == "true" && @request.mon == 1
          @request.monday_hash["cancelled"] = "yes"
          @request.update_attribute(:mon, 0)
        end
        if days[1] == "true" && @request.tue == 1
          @request.tuesday_hash["cancelled"] = "yes"
          @request.update_attribute(:tue, 0)
        end
        if days[2] == "true" && @request.wed == 1
          @request.wednesday_hash["cancelled"] = "yes"
          @request.update_attribute(:wed, 0)
        end
        if days[3] == "true" && @request.thu == 1
          @request.thursday_hash["cancelled"] = "yes"
          @request.update_attribute(:thu, 0)
        end
        if days[4] == "true" && @request.fri == 1
          @request.friday_hash["cancelled"] = "yes"
          @request.update_attribute(:fri, 0)
        end
        if days[5] == "true" && @request.sat == 1
          @request.saturday_hash["cancelled"] = "yes"
          @request.update_attribute(:sat, 0)
        end
        if days[6] == "true" && @request.sun == 1
          @request.sunday_hash["cancelled"] = "yes"
          @request.update_attribute(:sun, 0)
        end
      end
    elsif params["change"] == "5"
      if params["scope"] == "all"
        @request.update_attribute(:cancelled, 0)
        @request.monday_hash["cancelled"] = "no"
        @request.tuesday_hash["cancelled"] = "no"
        @request.wednesday_hash["cancelled"] = "no"
        @request.thursday_hash["cancelled"] = "no"
        @request.friday_hash["cancelled"] = "no"
        @request.saturday_hash["cancelled"] = "no"
        @request.sunday_hash["cancelled"] = "no"
        @request.approval.reset_approvals
      else
        if days[0] == "true"
          @request.monday_hash["cancelled"] = "no"
        end
        if days[1] == "true"
          @request.tuesday_hash["cancelled"] = "no"
        end
        if days[2] == "true"
          @request.wednesday_hash["cancelled"] = "no"
        end
        if days[3] == "true"
          @request.thursday_hash["cancelled"] = "no"
        end
        if days[4] == "true"
          @request.friday_hash["cancelled"] = "no"
        end
        if days[5] == "true"
          @request.saturday_hash["cancelled"] = "no"
        end
        if days[6] == "true"
          @request.sunday_hash["cancelled"] = "no"
        end
      end
    end
    if (@request.mon == 0 || @request.monday_hash["cancelled"] == "yes") && (@request.tue == 0 || @request.tuesday_hash["cancelled"] == "yes") && (@request.wed == 0 || @request.wednesday_hash["cancelled"] == "yes") && (@request.thu == 0 || @request.thursday_hash["cancelled"] == "yes") && (@request.fri == 0 || @request.friday_hash["cancelled"] == "yes") && (@request.sat == 0 || @request.saturday_hash["cancelled"] == "yes") && (@request.sun == 0 || @request.sunday_hash["cancelled"] == "yes")
      @request.cancelled = 1
    end
    @request.approval.save
    @request.approval_check
    @request.save
    @request.update_weekly
  end

end
