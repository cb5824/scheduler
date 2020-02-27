class Request < ApplicationRecord
  belongs_to :user
  has_many :changelogs
  has_many_attached :attachments

  def generate_changelog(temp_request, user)
    new_changelog = Changelog.new
    new_changelog.user_id = user.id
    new_changelog.request = self

    self.attributes.keys.each do |k|
      if self[k] != temp_request[k]
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

end
