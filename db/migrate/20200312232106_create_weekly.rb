class CreateWeekly < ActiveRecord::Migration[5.2]
  def change
    create_table :weeklies do |t|
      t.belongs_to :request
      t.string :start
      t.string :end
      t.boolean :taw
      t.boolean :form_b
      t.boolean :form_c
      t.boolean :track_and_time
      t.string :mon_workers
      t.string :tue_workers
      t.string :wed_workers
      t.string :thu_workers
      t.string :fri_workers
      t.string :sat_workers
      t.string :sun_workers
    end
  end
end
