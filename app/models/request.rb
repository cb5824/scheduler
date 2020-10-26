class Request < ApplicationRecord
  belongs_to :user
  has_many :changelogs
  has_many :notes
  has_many_attached :attachments
  has_one :weekly
  has_one :pending
  has_one :approval


  scope :filter_by_show_cancelled, -> (hide) {  where cancelled: 0 }
  scope :filter_by_show_pending, -> (hide) {  joins(:weekly).where("pending = ?", false) }
  scope :filter_by_show_approved, -> (hide) {  joins(:weekly).where("approved = ?", false) }
  scope :filter_by_show_rejected, -> (hide) {  joins(:weekly).where("rejected = ?", false) }

  scope :filter_by_night_work, -> (night_work) { where night_work: night_work }
  scope :filter_by_day_work, -> (day_work) { where night_work: 0 }
  scope :filter_by_week, -> (week) { where week: week }
  scope :filter_by_year, -> (year) { where year: year }
  scope :filter_by_single_tracking, -> (single_tracking) { joins(:weekly).where("single_tracking = ?", single_tracking)}
  scope :filter_by_no_single_tracking, -> (no_single_tracking) { joins(:weekly).where("single_tracking = ?", false)}
  scope :filter_by_mt1, -> (mt1) { joins(:weekly).where("mt1 = ?", mt1)}
  scope :filter_by_mt2, -> (mt2) { joins(:weekly).where("mt2 = ?", mt2)}
  scope :filter_by_mt3, -> (mt3) { joins(:weekly).where("mt3 = ?", mt3)}
  scope :filter_by_mt4, -> (mt4) { joins(:weekly).where("mt4 = ?", mt4)}
  scope :filter_by_other, -> (other) { joins(:weekly).where("other = ?", other)}
  scope :filter_by_taw, -> (taw) { joins(:weekly).where("taw = ?", taw)}
  scope :filter_by_form_b, -> (form_b) { joins(:weekly).where("form_b = ?", form_b)}
  scope :filter_by_form_c, -> (form_c) { joins(:weekly).where("form_c = ?", form_c)}
  scope :filter_by_track_and_time, -> (track_and_time) { joins(:weekly).where("track_and_time = ?", track_and_time)}
  scope :filter_by_contractor, -> (contractor) { joins(:weekly).where("contractor like ?", "#{contractor}%")}
  scope :filter_by_rwp, -> (rwp) { joins(:weekly).where("rwp = ?", rwp)}
  scope :filter_by_ocs, -> (ocs) { joins(:weekly).where("ocs = ?", ocs)}
  scope :filter_by_disturb, -> (disturb) { joins(:weekly).where("disturb = ?", disturb)}
  scope :filter_by_rrm, -> (rrm) { joins(:weekly).where("rrm = ?", rrm)}
  scope :filter_by_foul, -> (foul) { joins(:weekly).where("foul = ?", foul)}
  scope :filter_by_crossings, -> (crossings) { joins(:weekly).where("crossings = ?", crossings)}
  scope :filter_by_underground, -> (underground) { joins(:weekly).where("underground = ?", underground)}
  scope :filter_by_flagging, -> (flagging) { joins(:weekly).where("flagging = ?", flagging)}


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
    if self.approved? == true
      self.pending.clear
    end
  end

  def update_weekly(bypass = "no")
    starting_day = nil
    ending_day = nil
    starting_time = nil
    ending_time = ""
    starting_times_array = []
    ending_times_array = []
    mile_post = []
    control_point = []
    single_tracking = false
    mt1 = false
    mt2 = false
    mt3 = false
    mt4 = false
    other = false
    taw = false
    formb = false
    formc = false
    tandt = false
    inacc = false
    mon_workers = ""
    tue_workers = ""
    wed_workers = ""
    thu_workers = ""
    fri_workers = ""
    sat_workers = ""
    sun_workers = ""

  [[self.mon, self.monday_hash, "Mon"], [self.tue, self.tuesday_hash, "Tue"], [self.wed, self.wednesday_hash, "Wed"], [self.thu, self.thursday_hash, "Thu"], [self.fri, self.friday_hash, "Fri"], [self.sat, self.saturday_hash, "Sat"], [self.sun, self.sunday_hash, "Sun"]].each do |day|

    if day[1]["start_time"] != "" && starting_time == nil && day[1]["cancelled"] != "yes"
      starting_time = day[1]["start_time"]
      starting_day = day[2]

    end
    if day[1]["end_time"] != "" && day[1]["cancelled"] != "yes"
      ending_time = day[1]["end_time"]
      ending_day = day[2]
    end

    if day[1]["start_time"] != "" && day[1]["cancelled"] != "yes"
       starting_times_array << (day[1]["start_time"].delete ":").to_i
    end
    if day[1]["end_time"] != "" && day[1]["cancelled"] != "yes"
      ending_times_array << (day[1]["end_time"].delete ":").to_i
    end
    if day[1]["mp1"] != "" && day[1]["cancelled"] != "yes"
      mile_post << (day[1]["mp1"]).to_f
    end
    if day[1]["mp2"] != "" && day[1]["cancelled"] != "yes"
      mile_post << (day[1]["mp2"]).to_f
    end
    if day[0] != 0 && day[1]["cancelled"] != "yes"
      control_point << (day[1]["cp1"]).to_i
    end
    if day[0] != 0 && day[1]["cancelled"] != "yes"
      control_point << (day[1]["cp2"]).to_i
    end

    if day[1]["MT1"] == "1" && day[1]["cancelled"] != "yes"
        mt1 = true
    end
    if day[1]["MT2"] == "1" && day[1]["cancelled"] != "yes"
        mt2 = true
    end
    if day[1]["MT3"] == "1" && day[1]["cancelled"] != "yes"
        mt3 = true
    end
    if day[1]["MT4"] == "1" && day[1]["cancelled"] != "yes"
        mt4 = true
    end
    if day[1]["other"] == "1" && day[1]["cancelled"] != "yes"
        other = true
    end
    if day[0] != 0 && day[1]["cancelled"] != "yes" && day[1]["single_track"] == "single"
      single_tracking = true
    end

    if day[1]["taw"] == "1" && day[1]["cancelled"] != "yes"
        taw = true
    end
    if day[1]["form_b"] == "1" && day[1]["cancelled"] != "yes"
        formb = true
    end
    if day[1]["form_c"] == "1" && day[1]["cancelled"] != "yes"
        formc = true
    end
    if day[1]["track_and_time"] == "1" && day[1]["cancelled"] != "yes"
        tandt = true
    end
    if day[1]["inacc_track"] == "1" && day[1]["cancelled"] != "yes"
        inacc = true
    end



    temp_workers = day[1]["worker_primary"]
    [day[1]["worker_secondary1"], day[1]["worker_secondary2"], day[1]["worker_secondary3"], day[1]["worker_secondary4"], day[1]["worker_secondary5"], day[1]["worker_secondary6"], day[1]["worker_secondary7"], day[1]["worker_secondary8"], day[1]["worker_secondary9"]].each do |worker|
      if worker != "-"
        temp_workers += ", #{worker}"
      end
    end

    case day[2]
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
      comparison = self.weekly
    else
      @new_weekly = Weekly.new
      comparison = nil
    end

    if comparison
      if comparison.mon_workers != mon_workers
        self.pending.mon_workers = "1"
      end
      if comparison.tue_workers != tue_workers
        self.pending.tue_workers = "1"
      end
      if comparison.wed_workers != wed_workers
        self.pending.wed_workers = "1"
      end
      if comparison.thu_workers != thu_workers
        self.pending.thu_workers = "1"
      end
      if comparison.fri_workers != fri_workers
        self.pending.fri_workers = "1"
      end

      if comparison.sat_workers != sat_workers
        self.pending.sat_workers = "1"
      end
      if comparison.sun_workers != sun_workers
        self.pending.sun_workers = "1"
      end
      if comparison.start != "#{starting_day}: #{starting_time}"
        self.pending.start = "1"
      end
      if comparison.end != "#{ending_day}: #{ending_time}"
        self.pending.end = "1"
      end
      if comparison.taw != taw
        self.pending.taw = "1"
      end
      if comparison.form_b != formb
        self.pending.form_b = "1"
      end
      if comparison.form_c != formc
        self.pending.form_c = "1"
      end
      if comparison.track_and_time != tandt
        self.pending.track_and_time = "1"
      end
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
    @new_weekly.mile_post = "#{mile_post.min} -\n#{mile_post.max}"
    shift_start = starting_times_array.min.to_s
    if shift_start.length == 3
      shift_start = "0" + shift_start
    end
    shift_end = ending_times_array.min.to_s
    if shift_end.length == 3
      shift_end = "0" + shift_end
    end
    @new_weekly.control_point = "#{(CP_ARRAY.rassoc(control_point.min))[0]} -\n#{(CP_ARRAY.rassoc(control_point.max))[0]}"
    @new_weekly.shift = "#{shift_start} -\n#{shift_end}"
    @new_weekly.taw = taw
    @new_weekly.form_b = formb
    @new_weekly.form_c = formc
    @new_weekly.track_and_time = tandt
    @new_weekly.inacc_track = inacc
    @new_weekly.single_tracking = single_tracking
    @new_weekly.mt1 = mt1
    @new_weekly.mt2 = mt2
    @new_weekly.mt3 = mt3
    @new_weekly.mt4 = mt4
    @new_weekly.other = other
    @new_weekly.request = self
    if self.approval != nil
      @new_weekly.approved = self.approved?
      @new_weekly.rejected = self.rejected?
      @new_weekly.pending = self.pending?
    else
      @new_weekly.approved = false
      @new_weekly.rejected = false
      @new_weekly.pending = true
    end

    # @new_weekly.save
    # self.pending.save
    if bypass == "no"
      self.save
      self.weekly.save
    else
      return @new_weekly
    end
    #

  end

  def daystatus(group1, group2, group3, group4)
    if group1 == "rejected" || group2 == "rejected" || group3 == "rejected" || group4 == "rejected"
      return "rejected"
    elsif group1 == "approved" && group2 == "approved" && group3 == "approved" && group4 == "approved"
      return "approved"
    else
      return "pending"
    end
  end

  def expired?
    thisyear = Time.zone.now.to_datetime.cwyear
    thisweek = Time.zone.now.to_datetime.cweek
    if self.year <= thisyear
      self.week > thisweek
    else
      return true
    end
  end

  def active_days
    days = []
    [[self.mon, "mon"], [self.tue, "tue"], [self.wed, "wed"], [self.thu, "thu"], [self.fri, "fri"], [self.sat, "sat"], [self.sun, "sun"], ].each do |d|
      if d[0] == 1
        days << d[1]
      end
    end
    return days
  end

  def parse_cp(num)
    CP_ARRAY.rassoc(num)[0]
  end

  def approved?
    (self.approval.groupstatus(1) == "approved" && self.approval.groupstatus(2) == "approved" && self.approval.groupstatus(3) == "approved" && self.approval.groupstatus(4) == "approved") && self.cancelled == 0
  end

  def pending?
    (self.approval.groupstatus(1) == "pending" || self.approval.groupstatus(2) == "pending" || self.approval.groupstatus(3) == "pending" || self.approval.groupstatus(4) == "pending") && self.rejected? == false && self.cancelled == 0
  end

  def rejected?
    (self.approval.groupstatus(1) == "rejected" || self.approval.groupstatus(2) == "rejected" || self.approval.groupstatus(3) == "rejected" || self.approval.groupstatus(4) == "rejected") && self.cancelled == 0
  end

end
