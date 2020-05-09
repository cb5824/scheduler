class AddFieldsToWeeklies < ActiveRecord::Migration[5.2]
  def change
    add_column :weeklies, :mt1, :boolean
    add_column :weeklies, :mt2, :boolean
    add_column :weeklies, :mt3, :boolean
    add_column :weeklies, :mt4, :boolean
    add_column :weeklies, :other, :boolean
    add_column :weeklies, :inacc_track, :boolean
    add_column :weeklies, :mile_post, :string
    add_column :weeklies, :control_point, :string
    add_column :weeklies, :shift, :string
    add_column :weeklies, :single_tracking, :boolean

  end
end
