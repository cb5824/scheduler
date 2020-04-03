class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.timestamps null: false
      t.belongs_to :user, index: true
      t.integer :year, null: false
      t.integer :week, null: false
      t.string :contractor
      t.text :description, null: false
    end
  end
end
