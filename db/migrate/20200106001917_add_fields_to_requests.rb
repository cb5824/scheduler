class AddFieldsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :requestor_name, :string, null: false
    add_column :requests, :requestor_email, :string, null: false
    add_column :requests, :requestor_phone, :string, null: false
    add_column :requests, :requestor_project, :string, null: false
    add_column :requests, :requestor_work_directive, :string, null: false
    add_column :requests, :monday, :string
    add_column :requests, :tuesday, :string
    add_column :requests, :wednesday, :string
    add_column :requests, :thursday, :string
    add_column :requests, :friday, :string
    add_column :requests, :saturday, :string
    add_column :requests, :sunday, :string
    add_column :requests, :night_work, :string, null: false
    add_column :requests, :MT1, :string
    add_column :requests, :MT2, :string
    add_column :requests, :MT3, :string
    add_column :requests, :MT4, :string
    add_column :requests, :taw, :string
    add_column :requests, :form_b, :string
    add_column :requests, :form_c, :string
    add_column :requests, :track_and_time, :string
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
