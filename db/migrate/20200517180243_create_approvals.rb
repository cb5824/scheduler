class CreateApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :approvals do |t|
      t.belongs_to :request
      t.string :group_1_mon, default: "pending", null: false
      t.string :group_1_tue, default: "pending", null: false
      t.string :group_1_wed, default: "pending", null: false
      t.string :group_1_thu, default: "pending", null: false
      t.string :group_1_fri, default: "pending", null: false
      t.string :group_1_sat, default: "pending", null: false
      t.string :group_1_sun, default: "pending", null: false
      t.string :group_2_mon, default: "pending", null: false
      t.string :group_2_tue, default: "pending", null: false
      t.string :group_2_wed, default: "pending", null: false
      t.string :group_2_thu, default: "pending", null: false
      t.string :group_2_fri, default: "pending", null: false
      t.string :group_2_sat, default: "pending", null: false
      t.string :group_2_sun, default: "pending", null: false
      t.string :group_3_mon, default: "pending", null: false
      t.string :group_3_tue, default: "pending", null: false
      t.string :group_3_wed, default: "pending", null: false
      t.string :group_3_thu, default: "pending", null: false
      t.string :group_3_fri, default: "pending", null: false
      t.string :group_3_sat, default: "pending", null: false
      t.string :group_3_sun, default: "pending", null: false
      t.string :group_4_mon, default: "pending", null: false
      t.string :group_4_tue, default: "pending", null: false
      t.string :group_4_wed, default: "pending", null: false
      t.string :group_4_thu, default: "pending", null: false
      t.string :group_4_fri, default: "pending", null: false
      t.string :group_4_sat, default: "pending", null: false
      t.string :group_4_sun, default: "pending", null: false

    end
  end
end
