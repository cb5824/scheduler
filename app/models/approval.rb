class Approval < ApplicationRecord
    has_one :request


  def groupstatus(group)

    comparison = self.request
    days = []
    status = []

    if comparison.mon == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.tue == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.wed == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.thu == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.fri == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.sat == 1
      days << "true"
    else
      days << "false"
    end
    if comparison.sun == 1
      days << "true"
    else
      days << "false"
    end


    case group
    when 1
      if days[0] == "true"
        status << self.group_1_mon
      end
      if days[1] == "true"
        status << self.group_1_tue
      end
      if days[2] == "true"
        status << self.group_1_wed
      end
      if days[3] == "true"
        status << self.group_1_thu
      end
      if days[4] == "true"
        status << self.group_1_fri
      end
      if days[5] == "true"
        status << self.group_1_sat
      end
      if days[6] == "true"
        status << self.group_1_sun
      end
    when 2
      if days[0] == "true"
        status << self.group_2_mon
      end
      if days[1] == "true"
        status << self.group_2_tue
      end
      if days[2] == "true"
        status << self.group_2_wed
      end
      if days[3] == "true"
        status << self.group_2_thu
      end
      if days[4] == "true"
        status << self.group_2_fri
      end
      if days[5] == "true"
        status << self.group_2_sat
      end
      if days[6] == "true"
        status << self.group_2_sun
      end
    when 3
      if days[0] == "true"
        status << self.group_3_mon
      end
      if days[1] == "true"
        status << self.group_3_tue
      end
      if days[2] == "true"
        status << self.group_3_wed
      end
      if days[3] == "true"
        status << self.group_3_thu
      end
      if days[4] == "true"
        status << self.group_3_fri
      end
      if days[5] == "true"
        status << self.group_3_sat
      end
      if days[6] == "true"
        status << self.group_3_sun
      end
    when 4
      if days[0] == "true"
        status << self.group_4_mon
      end
      if days[1] == "true"
        status << self.group_4_tue
      end
      if days[2] == "true"
        status << self.group_4_wed
      end
      if days[3] == "true"
        status << self.group_4_thu
      end
      if days[4] == "true"
        status << self.group_4_fri
      end
      if days[5] == "true"
        status << self.group_4_sat
      end
      if days[6] == "true"
        status << self.group_4_sun
      end
    end
    if status.include?("rejected")
      return "rejected"
    elsif status.include?("pending")
      return "pending"
    else
      return "approved"
    end

  end

  def reset_approvals
    self.group_1_mon = "pending"
    self.group_1_tue = "pending"
    self.group_1_wed = "pending"
    self.group_1_thu = "pending"
    self.group_1_fri = "pending"
    self.group_1_sat = "pending"
    self.group_1_sun = "pending"
    self.group_2_mon = "pending"
    self.group_2_tue = "pending"
    self.group_2_wed = "pending"
    self.group_2_thu = "pending"
    self.group_2_fri = "pending"
    self.group_2_sat = "pending"
    self.group_2_sun = "pending"
    self.group_3_mon = "pending"
    self.group_3_tue = "pending"
    self.group_3_wed = "pending"
    self.group_3_thu = "pending"
    self.group_3_fri = "pending"
    self.group_3_sat = "pending"
    self.group_3_sun = "pending"
    self.group_4_mon = "pending"
    self.group_4_tue = "pending"
    self.group_4_wed = "pending"
    self.group_4_thu = "pending"
    self.group_4_fri = "pending"
    self.group_4_sat = "pending"
    self.group_4_sun = "pending"
    self.save
  end

  def day_approved?(day)
    approved = nil
    case day
    when "mon"
      approved = (self.group_1_mon == "approved" && self.group_2_mon == "approved" && self.group_3_mon == "approved" && self.group_4_mon == "approved")
    when "tue"
      approved = (self.group_1_tue == "approved" && self.group_2_tue == "approved" && self.group_3_tue == "approved" && self.group_4_tue == "approved")
    when "wed"
      approved = (self.group_1_wed == "approved" && self.group_2_wed == "approved" && self.group_3_wed == "approved" && self.group_4_wed == "approved")
    when "thu"
      approved = (self.group_1_thu == "approved" && self.group_2_thu == "approved" && self.group_3_thu == "approved" && self.group_4_thu == "approved")
    when "fri"
      approved = (self.group_1_fri == "approved" && self.group_2_fri == "approved" && self.group_3_fri == "approved" && self.group_4_fri == "approved")
    when "sat"
      approved = (self.group_1_sat == "approved" && self.group_2_sat == "approved" && self.group_3_sat == "approved" && self.group_4_sat == "approved")
    when "sun"
      approved = (self.group_1_sun == "approved" && self.group_2_sun == "approved" && self.group_3_sun == "approved" && self.group_4_sun == "approved")
    end
    return approved
  end
end
