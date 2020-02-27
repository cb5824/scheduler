class AddAdditionalApprovalsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :approval1, :string, default: "pending"
    add_column :requests, :approval2, :string, default: "pending"
    add_column :requests, :approval3, :string, default: "pending"
    add_column :requests, :approval4, :string, default: "pending"
  end
end
