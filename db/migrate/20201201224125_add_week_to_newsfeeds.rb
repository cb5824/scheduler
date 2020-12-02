class AddWeekToNewsfeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :newsfeeds, :week, :integer, null: false
    add_column :newsfeeds, :year, :integer, null: false
  end
end
