class CreateNewsfeed < ActiveRecord::Migration[5.2]
  def change
    create_table :newsfeeds do |t|
      t.text :contents, null: false
      t.timestamps null: false
    end
  end
end
