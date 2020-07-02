class AddAdditionalFieldsToPendings < ActiveRecord::Migration[5.2]
  def change
    add_column :pendings, :change_notices, :string, default: "0", null: false
    add_column :pendings, :rwp, :string, default: "0", null: false
    add_column :pendings, :ocs, :string, default: "0", null: false
    add_column :pendings, :disturb, :string, default: "0", null: false
    add_column :pendings, :rrm, :string, default: "0", null: false
    add_column :pendings, :foul, :string, default: "0", null: false
    add_column :pendings, :crossings, :string, default: "0", null: false
    add_column :pendings, :underground, :string, default: "0", null: false
    add_column :pendings, :flagging, :string, default: "0", null: false
    add_column :pendings, :requestor_email, :string, default: "0", null: false
    add_column :pendings, :requestor_name, :string, default: "0", null: false
    add_column :pendings, :color, :string, default: "0", null: false
    add_column :pendings, :requestor_phone, :string, default: "0", null: false
    add_column :pendings, :requestor_work_directive, :string, default: "0", null: false
    add_column :pendings, :year, :string, default: "0", null: false
    add_column :pendings, :week, :string, default: "0", null: false
  end
end
