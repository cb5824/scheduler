class AddValuesToChangelogs < ActiveRecord::Migration[5.2]
  def change
    add_column :changelogs, :old_values, :hstore, default: {}, null: false
    add_column :changelogs, :new_values, :hstore, default: {}, null: false
  end
end
