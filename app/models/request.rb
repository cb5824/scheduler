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

  def generate_approval_log(user, old_status)
    new_changelog = Changelog.new
    new_changelog.user_id = user.id
    new_changelog[:old_values]["status"] = old_status
    new_changelog[:new_values]["status"] = self.status
    new_changelog.request = self
    new_changelog.save

  end

end
