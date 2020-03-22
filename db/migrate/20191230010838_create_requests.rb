class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.integer :year, null: false
      t.integer :week, null: false
      t.time  :start_time
      t.time  :end_time
      t.integer :cp1
      t.integer :mp1
      t.integer :cp2
      t.integer :mp2
      t.string :contractor
      t.string :worker_primary
      t.string :worker_secondary1
      t.string :worker_secondary2
      t.string :worker_secondary3
      t.string :worker_secondary4
      t.string :worker_secondary5
      t.text :description, null: false
    end
  end
end
