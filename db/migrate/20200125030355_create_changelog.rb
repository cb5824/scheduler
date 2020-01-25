class CreateChangelog < ActiveRecord::Migration[5.2]
  def change
    create_table :changelogs do |t|
      t.belongs_to :request
      t.belongs_to :user
      t.timestamps
    end
  end
end
