class AddSingleTrackToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :single_track, :string, null: false
  end
end
