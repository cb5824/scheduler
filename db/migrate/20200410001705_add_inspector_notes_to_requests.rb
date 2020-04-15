class AddInspectorNotesToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :inspector_notes_mon, :text, default: ""
    add_column :requests, :inspector_notes_tue, :text, default: ""
    add_column :requests, :inspector_notes_wed, :text, default: ""
    add_column :requests, :inspector_notes_thu, :text, default: ""
    add_column :requests, :inspector_notes_fri, :text, default: ""
    add_column :requests, :inspector_notes_sat, :text, default: ""
    add_column :requests, :inspector_notes_sun, :text, default: ""
  end
end
