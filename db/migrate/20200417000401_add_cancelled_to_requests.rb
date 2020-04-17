class AddCancelledToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :cancelled, :integer, default: 0
  end
end
