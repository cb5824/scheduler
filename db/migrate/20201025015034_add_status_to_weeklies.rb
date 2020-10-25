class AddStatusToWeeklies < ActiveRecord::Migration[5.2]
  def change
    add_column :weeklies, :pending, :boolean, default: "true", null: false
    add_column :weeklies, :approved, :boolean, default: "false", null: false
    add_column :weeklies, :rejected, :boolean, default: "false", null: false
  end
end
