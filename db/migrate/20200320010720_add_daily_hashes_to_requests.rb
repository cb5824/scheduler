class AddDailyHashesToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :monday_hash, :hstore, default: {}, null: false
    add_column :requests, :tuesday_hash, :hstore, default: {}, null: false
    add_column :requests, :wednesday_hash, :hstore, default: {}, null: false
    add_column :requests, :thursday_hash, :hstore, default: {}, null: false
    add_column :requests, :friday_hash, :hstore, default: {}, null: false
    add_column :requests, :saturday_hash, :hstore, default: {}, null: false
    add_column :requests, :sunday_hash, :hstore, default: {}, null: false

  end
end
