class AddDefaultcolorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :default_color, :string, default: "color_ffffff", null: false
  end
end
