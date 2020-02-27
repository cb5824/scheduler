class AddApprovalgroupToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :approval_group, :integer, default: 0
  end
end
