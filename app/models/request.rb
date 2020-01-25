class Request < ApplicationRecord
  belongs_to :user
  has_many :changelogs

  def generate_changelog(temp_request, user)
    # self
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
end
