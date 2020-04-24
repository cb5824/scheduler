class CreatePendings < ActiveRecord::Migration[5.2]
  def change
    create_table :pendings do |t|
      t.belongs_to :request
      t.string :project, default: "0", null: false
      t.string :title, default: "0", null: false
      t.string :contractor, default: "0", null: false
      t.string :description, default: "0", null: false
      t.string :mon, default: "0", null: false
      t.string :tue, default: "0", null: false
      t.string :wed, default: "0", null: false
      t.string :thu, default: "0", null: false
      t.string :fri, default: "0", null: false
      t.string :sat, default: "0", null: false
      t.string :sun, default: "0", null: false
      t.string :night_work, default: "0", null: false
      t.hstore :monday_values, default: {}, null: false
      t.hstore :tuesday_values, default: {}, null: false
      t.hstore :wednesday_values, default: {}, null: false
      t.hstore :thursday_values, default: {}, null: false
      t.hstore :friday_values, default: {}, null: false
      t.hstore :saturday_values, default: {}, null: false
      t.hstore :sunday_values, default: {}, null: false
      t.string :start, default: "0", null: false
      t.string :end, default: "0", null: false
      t.string :taw, default: "0", null: false
      t.string :form_b, default: "0", null: false
      t.string :form_c, default: "0", null: false
      t.string :track_and_time, default: "0", null: false
      t.string :mon_workers, default: "0", null: false
      t.string :tue_workers, default: "0", null: false
      t.string :wed_workers, default: "0", null: false
      t.string :thu_workers, default: "0", null: false
      t.string :fri_workers, default: "0", null: false
      t.string :sat_workers, default: "0", null: false
      t.string :sun_workers, default: "0", null: false
    end
  end
end
