class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :request
      t.belongs_to :user
      t.text :body
      t.timestamps
    end
  end
end
