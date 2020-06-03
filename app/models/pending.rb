class Pending < ApplicationRecord
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


    [[current.monday_hash, comparison.monday_hash], [current.tuesday_hash, comparison.tuesday_hash], [current.wednesday_hash, comparison.wednesday_hash], [current.thursday_hash, comparison.thursday_hash], [current.friday_hash, comparison.friday_hash], [current.saturday_hash, comparison.saturday_hash], [current.sunday_hash, comparison.sunday_hash]].each_with_index do |day, index|
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
      if day[0]["b_name_number"] != day[1]["b_name_number"]
        self.parse_day(index, "b_name_number")
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

end
