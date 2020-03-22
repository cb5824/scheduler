class AddSingleTrackToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :single_track, :boolean
  end
end
