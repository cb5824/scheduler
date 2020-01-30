class AddCommentsToChangelogs < ActiveRecord::Migration[5.2]
  def change
    add_column :changelogs, :comments, :string, default: "-"
  end
end
