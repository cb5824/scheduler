class Pending < ApplicationRecord
  # I wonder whether you really, really need this.
  # Or maybe it's doing something different than a Request or Approval. It seems like
  # it has more functionality.
  has_one :request

  def change(comparison)
    current = self.request
    comparison_weekly = comparison.update_weekly("yes")
    # t.integer "project", default: 0, null: false
    if current.requestor_project != comparison.requestor_project
      self.project = "1"
    end
    # t.integer "title", default: 0, null: false
    if current.title != comparison.title
      self.title = "1"
    end
    # t.integer "contractor", default: 0, null: false
    if current.contractor != comparison.contractor
      self.contractor = "1"
    end
# t.integer "description", default: 0, null: false
    if current.description != comparison.description
      self.description = "1"
    end
    # t.integer "mon", default: 0, null: false
    if current.mon != comparison.mon
      self.mon = "1"
    end
    # t.integer "tue", default: 0, null: false
    if current.tue != comparison.tue
      self.tue = "1"
    end
    # t.integer "wed", default: 0, null: false
    if current.wed != comparison.wed
      self.wed = "1"
    end
    # t.integer "thu", default: 0, null: false
    if current.thu != comparison.thu
      self.thu = "1"
    end
    # t.integer "fri", default: 0, null: false
    if current.fri != comparison.fri
      self.fri = "1"
    end
    # t.integer "sat", default: 0, null: false
    if current.sat != comparison.sat
      self.sat = "1"
    end
    # t.integer "sun", default: 0, null: false
    if current.sun != comparison.sun
      self.sun = "1"
    end
    # t.integer "night_work", default: 0, null: false
    if current.night_work != comparison.night_work
      self.night_work = "1"
    end

    # •	Mile post
    if current.weekly.mile_post != comparison_weekly.mile_post
      self.mile_post = "1"
    end

    # •	Cp
    if current.weekly.control_point != comparison_weekly.control_point
      self.control_point = "1"
    end
    # •	Mt1 -4 and other
    if current.weekly.mt1 != comparison_weekly.mt1
      self.mt1 = "1"
    end
    if current.weekly.mt2 != comparison_weekly.mt2
      self.mt2 = "1"
    end
    if current.weekly.mt3 != comparison_weekly.mt3
      self.mt3 = "1"
    end
    if current.weekly.mt4 != comparison_weekly.mt4
      self.mt4 = "1"
    end
    if current.weekly.other != comparison_weekly.other
      self.other = "1"
    end
    # •	Single tracking
    if current.weekly.single_tracking != comparison_weekly.single_tracking
      self.single_tracking = "1"
    end
    # •	Shift
    if current.weekly.shift != comparison_weekly.shift
      self.shift = "1"
    end

    # •	Inacc track
    if current.weekly.inacc_track != comparison_weekly.inacc_track
      self.inacc_track = "1"
    end

    # •	Sswps
    if current.sswps != comparison.sswps
      self.sswps = "1"
    end

    # •	Change notices
    if current.change_notices != comparison.change_notices
      self.change_notices = "1"
    end
    #
    if current.rwp != comparison.rwp
      self.rwp = "1"
    end
    if current.ocs != comparison.ocs
      self.ocs = "1"
    end
    if current.disturb != comparison.disturb
      self.disturb = "1"
    end
    if current.rrm != comparison.rrm
      self.rrm = "1"
    end
    if current.foul != comparison.foul
      self.foul = "1"
    end
    if current.crossings != comparison.crossings
      self.crossings = "1"
    end
    if current.underground != comparison.underground
      self.underground = "1"
    end
    if current.flagging != comparison.flagging
      self.flagging = "1"
    end
    if current.requestor_email != comparison.requestor_email
      self.requestor_email = "1"
    end
    if current.requestor_phone != comparison.requestor_phone
      self.requestor_phone = "1"
    end
    if current.requestor_work_directive != comparison.requestor_work_directive
      self.requestor_work_directive = "1"
    end
    if current.year != comparison.year
      self.year = "1"
    end
    if current.week != comparison.week
      self.week = "1"
    end

    # Only cleaned this up so I could look at it w/o scrolling.
    [
      [current.monday_hash, comparison.monday_hash],
      [current.tuesday_hash, comparison.tuesday_hash],
      [current.wednesday_hash, comparison.wednesday_hash],
      [current.thursday_hash, comparison.thursday_hash],
      [current.friday_hash, comparison.friday_hash],
      [current.saturday_hash, comparison.saturday_hash],
      [current.sunday_hash, comparison.sunday_hash]
    ].each_with_index do |day, index|
      # There's probably a way to tighten this up. You're calling the same method
      # here, so wouldn't you be able to use iteration to shorten this method call?
      if day[0]["MT1"] != day[1]["MT1"]
        self.parse_day(index, "MT1")
      end
      if day[0]["MT2"] != day[1]["MT2"]
        self.parse_day(index, "MT2")
      end
      if day[0]["MT3"] != day[1]["MT3"]
        self.parse_day(index, "MT3")
      end
      if day[0]["MT4"] != day[1]["MT4"]
        self.parse_day(index, "MT4")
      end
      if day[0]["other"] != day[1]["other"]
        self.parse_day(index, "other")
      end
      if day[0]["cp1"] != day[1]["cp1"]
        self.parse_day(index, "cp1")
      end
      if day[0]["cp2"] != day[1]["cp2"]
        self.parse_day(index, "cp2")
      end
      if day[0]["mp1"] != day[1]["mp1"]
        self.parse_day(index, "mp1")
      end
      if day[0]["mp2"] != day[1]["mp2"]
        self.parse_day(index, "mp2")
      end
      if day[0]["taw"] != day[1]["taw"]
        self.parse_day(index, "taw")
      end
      if day[0]["form_b"] != day[1]["form_b"]
        self.parse_day(index, "form_b")
      end
      if day[0]["form_c"] != day[1]["form_c"]
        self.parse_day(index, "form_c")
      end
      if day[0]["end_time"] != day[1]["end_time"]
        self.parse_day(index, "end_time")
      end
      if day[0]["start_time"] != day[1]["start_time"]
        self.parse_day(index, "start_time")
      end
      if day[0]["single_track"] != day[1]["single_track"]
        self.parse_day(index, "single_track")
      end
      if day[0]["track_and_time"] != day[1]["track_and_time"]
        self.parse_day(index, "track_and_time")
      end
      if day[0]["worker_primary"] != day[1]["worker_primary"]
        self.parse_day(index, "worker_primary")
      end
      if day[0]["worker_secondary1"] != day[1]["worker_secondary1"]
        self.parse_day(index, "worker_secondary1")
      end
      if day[0]["worker_secondary2"] != day[1]["worker_secondary2"]
        self.parse_day(index, "worker_secondary2")
      end
      if day[0]["worker_secondary3"] != day[1]["worker_secondary3"]
        self.parse_day(index, "worker_secondary3")
      end
      if day[0]["worker_secondary4"] != day[1]["worker_secondary4"]
        self.parse_day(index, "worker_secondary4")
      end
      if day[0]["worker_secondary5"] != day[1]["worker_secondary5"]
        self.parse_day(index, "worker_secondary5")
      end
      if day[0]["inacc_track"] != day[1]["inacc_track"]
        self.parse_day(index, "inacc_track")
      end
      if day[0]["b_time"] != day[1]["b_time"]
        self.parse_day(index, "b_time")
      end
      if day[0]["b_location"] != day[1]["b_location"]
        self.parse_day(index, "b_location")
      end
      if day[0]["onsite_name"] != day[1]["onsite_name"]
        self.parse_day(index, "onsite_name")
      end

    end
  end

  # Day
  # •	Briefing details
  # •	Inacc track

  def parse_day(index, value)
    case index
    when 0
      self.monday_values[value] = 1
    when 1
      self.tuesday_values[value] = 1
    when 2
      self.wednesday_values[value] = 1
    when 3
      self.thursday_values[value] = 1
    when 4
      self.friday_values[value] = 1
    when 5
      self.saturday_values[value] = 1
    when 6
      self.sunday_values[value] = 1
    end

  end

  def clear 
    self.attributes.each do |attr|
      if attr[1].class == String && attr[0] != "request_id" && attr[0] != "id"
        self[attr[0]] = "0"
      elsif attr[1].class == Hash
        self[attr[0]] = {}
      end
    end
    self.save
  end

  def set_pending(group, days)
    case group
    when 1
      days.each do |d|
        case d
        when "mon"
          self.request.approval.update_attribute(:group_1_mon, 'pending')
        when "tue"
          self.request.approval.update_attribute(:group_1_tue, 'pending')
        when "wed"
          self.request.approval.update_attribute(:group_1_wed, 'pending')
        when "thu"
          self.request.approval.update_attribute(:group_1_thu, 'pending')
        when "fri"
          self.request.approval.update_attribute(:group_1_fri, 'pending')
        when "sat"
          self.request.approval.update_attribute(:group_1_sat, 'pending')
        when "sun"
          self.request.approval.update_attribute(:group_1_sun, 'pending')
        end
      end
    when 2
      days.each do |d|
        case d
        when "mon"
          self.request.approval.update_attribute(:group_2_mon, 'pending')
        when "tue"
          self.request.approval.update_attribute(:group_2_tue, 'pending')
        when "wed"
          self.request.approval.update_attribute(:group_2_wed, 'pending')
        when "thu"
          self.request.approval.update_attribute(:group_2_thu, 'pending')
        when "fri"
          self.request.approval.update_attribute(:group_2_fri, 'pending')
        when "sat"
          self.request.approval.update_attribute(:group_2_sat, 'pending')
        when "sun"
          self.request.approval.update_attribute(:group_2_sun, 'pending')
        end
      end
    when 3
      days.each do |d|
        case d
        when "mon"
          self.request.approval.update_attribute(:group_3_mon, 'pending')
        when "tue"
          self.request.approval.update_attribute(:group_3_tue, 'pending')
        when "wed"
          self.request.approval.update_attribute(:group_3_wed, 'pending')
        when "thu"
          self.request.approval.update_attribute(:group_3_thu, 'pending')
        when "fri"
          self.request.approval.update_attribute(:group_3_fri, 'pending')
        when "sat"
          self.request.approval.update_attribute(:group_3_sat, 'pending')
        when "sun"
          self.request.approval.update_attribute(:group_3_sun, 'pending')
        end
      end
    when 4
      days.each do |d|
        case d
        when "mon"
          self.request.approval.update_attribute(:group_4_mon, 'pending')
        when "tue"
          self.request.approval.update_attribute(:group_4_tue, 'pending')
        when "wed"
          self.request.approval.update_attribute(:group_4_wed, 'pending')
        when "thu"
          self.request.approval.update_attribute(:group_4_thu, 'pending')
        when "fri"
          self.request.approval.update_attribute(:group_4_fri, 'pending')
        when "sat"
          self.request.approval.update_attribute(:group_4_sat, 'pending')
        when "sun"
          self.request.approval.update_attribute(:group_4_sun, 'pending')
        end
      end
    end
  end

  def update_approval_groups
    [self.project, self.title, self.contractor, self.description, self.night_work, self.requestor_name, self.requestor_email, self.requestor_phone, self.requestor_work_directive, self.color, self.year, self.week, self.sswps, self.change_notices, self.rwp, self.ocs, self.disturb, self.rrm, self.foul, self.crossings, self.underground, self.flagging].each do |attribute|
      if attribute == "1"
        set_pending(1, self.request.active_days)
        set_pending(2, self.request.active_days)
        set_pending(4, self.request.active_days)
      end
    end
    [self.mon, self.tue, self.wed, self.thu, self.fri, self.sat, self.sun].each do |attribute|
      if attribute == "1"
        set_pending(1, self.request.active_days)
        set_pending(2, self.request.active_days)
        set_pending(3, self.request.active_days)
        set_pending(4, self.request.active_days)
      end
    end
    [[self.monday_values, "mon"], [self.tuesday_values, "tue"], [self.wednesday_values, "wed"], [self.thursday_values, "thu"], [self.friday_values, "fri"], [self.saturday_values, "sat"], [self.sunday_values, "sun"]].each do |day|
      if day[0]["b_time"] == "1" || day[0]["b_location"] == "1" || day[0]["onsite_name"] == "1" || day[0]["onsite_number"] == "1" || day[0]["worker_primary"] == "1" || day[0]["worker_secondary1"] == "1" || day[0]["worker_secondary2"] == "1" || day[0]["worker_secondary3"] == "1" || day[0]["worker_secondary4"] == "1" || day[0]["worker_secondary5"] == "1"
        set_pending(2, [day[1]])
        set_pending(3, [day[1]])
        set_pending(4, [day[1]])
      end
    end
    [[self.monday_values, "mon"], [self.tuesday_values, "tue"], [self.wednesday_values, "wed"], [self.thursday_values, "thu"], [self.friday_values, "fri"], [self.saturday_values, "sat"], [self.sunday_values, "sun"]].each do |day|
      if day[0]["start_time"] == "1" || day[0]["end_time"] == "1" || day[0]["cp1"] == "1" || day[0]["cp2"] == "1" || day[0]["mp1"] == "1" || day[0]["mp2"] == "1" || day[0]["MT1"] == "1" || day[0]["MT2"] == "1" || day[0]["MT3"] == "1" || day[0]["MT4"] == "1" || day[0]["other"]
        set_pending(2, [day[1]])
        set_pending(4, [day[1]])
      end
    end

  end

end
