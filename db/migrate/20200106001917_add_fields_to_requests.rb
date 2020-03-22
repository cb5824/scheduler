class AddFieldsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :requestor_name, :string, null: false
    add_column :requests, :requestor_email, :string, null: false
    add_column :requests, :requestor_phone, :string, null: false
    add_column :requests, :requestor_project, :string, null: false
    add_column :requests, :requestor_work_directive, :string, null: false
    add_column :requests, :mon, :integer, default: 0
    add_column :requests, :tue, :integer, default: 0
    add_column :requests, :wed, :integer, default: 0
    add_column :requests, :thu, :integer, default: 0
    add_column :requests, :fri, :integer, default: 0
    add_column :requests, :sat, :integer, default: 0
    add_column :requests, :sun, :integer, default: 0
    add_column :requests, :night_work, :integer, default: 0
    add_column :requests, :MT1, :integer, default: 0
    add_column :requests, :MT2, :integer, default: 0
    add_column :requests, :MT3, :integer, default: 0
    add_column :requests, :MT4, :integer, default: 0
    add_column :requests, :taw, :integer, default: 0
    add_column :requests, :form_b, :integer, default: 0
    add_column :requests, :form_c, :integer, default: 0
    add_column :requests, :track_and_time, :integer, default: 0
    add_column :requests, :title, :string
    add_column :requests, :sswps, :string
    add_column :requests, :change_notices, :string
    add_column :requests, :rwp, :string
    add_column :requests, :ocs, :string
    add_column :requests, :disturb, :string
    add_column :requests, :rrm, :string
    add_column :requests, :foul, :string
    add_column :requests, :crossings, :string
    add_column :requests, :underground, :string
    add_column :requests, :flagging, :string
    add_column :requests, :late_reason, :string
    add_column :requests, :rush_reason, :string
    add_column :requests, :change_reason, :string
  end
end
