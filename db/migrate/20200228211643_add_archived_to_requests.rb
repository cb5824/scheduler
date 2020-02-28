class AddArchivedToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :archived, :string, default: "no"
    add_column :requests, :color, :string, default: "color_ffffff"    
  end
end
