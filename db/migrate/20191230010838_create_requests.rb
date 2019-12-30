class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.integer :year, null: false
      t.integer :week, null: false
      t.time  :start_time, null: false
      t.time  :end_time, null: false
      t.integer :cp1, null: false
      t.integer :mp1, null: false
      t.integer :cp2, null: false
      t.integer :mp2, null: false
      t.string :contractor, null: false
      t.integer :worker_primary, null: false
      t.integer :worker_secondary1
      t.integer :worker_secondary2
      t.integer :worker_secondary3
      t.integer :worker_secondary4
      t.integer :worker_secondary5
      t.text :description, null: false
    end
  end
end
