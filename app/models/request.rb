class Request < ApplicationRecord
  belongs_to :user
  has_many :changelogs
  has_many :notes
  has_many_attached :attachments
  has_one :weekly

  def generate_note(user, text)
    new_note = Note.new
    new_note.user_id = user.id
    new_note.request = self
    new_note.body = text
    new_note.save
  end

  def generate_changelog(temp_request, user)
    new_changelog = Changelog.new
    new_changelog.user_id = user.id
    new_changelog.request = self
    self.attributes.keys.each do |k|
      if self[k] != temp_request[k] && ["approval1", "approval2", "approval3", "approval4"].include?(k) == false
        new_changelog.old_values[k] = self[k]
        new_changelog.new_values[k] = temp_request[k]
      end
    end
    new_changelog.save

  end

  def generate_approval_log(user, old_status, new_status)
    new_changelog = Changelog.new
    new_changelog.user_id = user.id
    new_changelog[:old_values]["status"] = old_status
    new_changelog[:new_values]["status"] = new_status
    new_changelog.request = self
    new_changelog.save
  end

  def approval_check
    if self.approval1 == "rejected" || self.approval2 == "rejected" || self.approval3 == "rejected" || self.approval4 == "rejected"
      self.update_attribute(:status, 'rejected')
    elsif self.approval1 == "approved" && self.approval2 == "approved" && self.approval3 == "approved" && self.approval4 == "approved"
      self.update_attribute(:status, 'approved')
    else
      self.update_attribute(:status, 'pending')
    end
  end

  def update_weekly
    starting_day = nil
    ending_day = nil
    starting_time = nil
    ending_time = nil
    taw = 0
    night = 0
    formb = 0
    formc = 0
    tandt = 0
    mon_workers = ""
    tue_workers = ""
    wed_workers = ""
    thu_workers = ""
    fri_workers = ""
    sat_workers = ""
    sun_workers = ""

  [["Mon", self.monday_hash], ["Tue", self.tuesday_hash], ["Wed", self.wednesday_hash], ["Thu", self.thursday_hash], ["Fri", self.friday_hash], ["Sat", self.saturday_hash], ["Sun", self.sunday_hash]].each do |day|


    if day[1]["start_time"] != "" && starting_time == nil && day[1]["cancelled"] != "yes"
      starting_time = day[1]["start_time"]
      starting_day = day[0]

    end
    if day[1]["end_time"] != "" && day[1]["cancelled"] != "yes"
      ending_time = day[1]["end_time"]
      ending_day = day[0]
    end

    if day[1]["taw"] == "1"
        taw = 1
    end
    if day[1]["form_b"] == "1"
        form_b = 1
    end
    if day[1]["form_c"] == "1"
        form_c = 1
    end
    if day[1]["track_and_time"] == "1"
        tandt = 1
    end

    temp_workers = day[1]["worker_primary"]
    [day[1]["worker_secondary1"], day[1]["worker_secondary2"], day[1]["worker_secondary3"], day[1]["worker_secondary4"], day[1]["worker_secondary5"]].each do |worker|
      if worker != "none"
        temp_workers += ", #{worker}"
      end
    end

    case day[0]
    when "Mon"
      mon_workers = temp_workers
    when "Tue"
      tue_workers = temp_workers
    when "Wed"
      wed_workers = temp_workers
    when "Thu"
      thu_workers = temp_workers
    when "Fri"
      fri_workers = temp_workers
    when "Sat"
      sat_workers = temp_workers
    when "Sun"
      sun_workers = temp_workers
    end

  end

    if self.weekly != nil
      @new_weekly = self.weekly
    else
      @new_weekly = Weekly.new
    end

    @new_weekly.mon_workers = mon_workers
    @new_weekly.tue_workers = tue_workers
    @new_weekly.wed_workers = wed_workers
    @new_weekly.thu_workers = thu_workers
    @new_weekly.fri_workers = fri_workers
    @new_weekly.sat_workers = sat_workers
    @new_weekly.sun_workers = sun_workers
    @new_weekly.start = "#{starting_day}: #{starting_time}"
    @new_weekly.end = "#{ending_day}: #{ending_time}"
    @new_weekly.taw = taw
    @new_weekly.form_b = formb
    @new_weekly.form_c = formc
    @new_weekly.track_and_time = tandt
    @new_weekly.request = self
    @new_weekly.save
    self.save
  end

end
