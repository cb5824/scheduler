class AddFieldsToPendings < ActiveRecord::Migration[5.2]
  def change
    add_column :pendings, :mile_post, :string, default: "0", null: false
    add_column :pendings, :control_point, :string, default: "0", null: false
    add_column :pendings, :mt1, :string, default: "0", null: false
    add_column :pendings, :mt2, :string, default: "0", null: false
    add_column :pendings, :mt3, :string, default: "0", null: false
    add_column :pendings, :mt4, :string, default: "0", null: false
    add_column :pendings, :other, :string, default: "0", null: false
    add_column :pendings, :single_tracking, :string, default: "0", null: false
    add_column :pendings, :inacc_track, :string, default: "0", null: false
    add_column :pendings, :sswps, :string, default: "0", null: false
    add_column :pendings, :shift, :string, default: "0", null: false

  end
end
