class AddDailyDetailsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :start_time_mon, :time
    add_column :requests, :start_time_tue, :time
    add_column :requests, :start_time_wed, :time
    add_column :requests, :start_time_thu, :time
    add_column :requests, :start_time_fri, :time
    add_column :requests, :start_time_sat, :time
    add_column :requests, :start_time_sun, :time

    add_column :requests, :end_time_mon, :time
    add_column :requests, :end_time_tue, :time
    add_column :requests, :end_time_wed, :time
    add_column :requests, :end_time_thu, :time
    add_column :requests, :end_time_fri, :time
    add_column :requests, :end_time_sat, :time
    add_column :requests, :end_time_sun, :time

    add_column :requests, :cp1_mon, :integer
    add_column :requests, :cp1_tue, :integer
    add_column :requests, :cp1_wed, :integer
    add_column :requests, :cp1_thu, :integer
    add_column :requests, :cp1_fri, :integer
    add_column :requests, :cp1_sat, :integer
    add_column :requests, :cp1_sun, :integer

    add_column :requests, :cp2_mon, :integer
    add_column :requests, :cp2_tue, :integer
    add_column :requests, :cp2_wed, :integer
    add_column :requests, :cp2_thu, :integer
    add_column :requests, :cp2_fri, :integer
    add_column :requests, :cp2_sat, :integer
    add_column :requests, :cp2_sun, :integer

    add_column :requests, :mp1_mon, :integer
    add_column :requests, :mp1_tue, :integer
    add_column :requests, :mp1_wed, :integer
    add_column :requests, :mp1_thu, :integer
    add_column :requests, :mp1_fri, :integer
    add_column :requests, :mp1_sat, :integer
    add_column :requests, :mp1_sun, :integer

    add_column :requests, :mp2_mon, :integer
    add_column :requests, :mp2_tue, :integer
    add_column :requests, :mp2_wed, :integer
    add_column :requests, :mp2_thu, :integer
    add_column :requests, :mp2_fri, :integer
    add_column :requests, :mp2_sat, :integer
    add_column :requests, :mp2_sun, :integer

    add_column :requests, :MT1_mon, :integer
    add_column :requests, :MT1_tue, :integer
    add_column :requests, :MT1_wed, :integer
    add_column :requests, :MT1_thu, :integer
    add_column :requests, :MT1_fri, :integer
    add_column :requests, :MT1_sat, :integer
    add_column :requests, :MT1_sun, :integer

    add_column :requests, :MT2_mon, :integer
    add_column :requests, :MT2_tue, :integer
    add_column :requests, :MT2_wed, :integer
    add_column :requests, :MT2_thu, :integer
    add_column :requests, :MT2_fri, :integer
    add_column :requests, :MT2_sat, :integer
    add_column :requests, :MT2_sun, :integer

    add_column :requests, :MT3_mon, :integer
    add_column :requests, :MT3_tue, :integer
    add_column :requests, :MT3_wed, :integer
    add_column :requests, :MT3_thu, :integer
    add_column :requests, :MT3_fri, :integer
    add_column :requests, :MT3_sat, :integer
    add_column :requests, :MT3_sun, :integer

    add_column :requests, :MT4_mon, :integer
    add_column :requests, :MT4_tue, :integer
    add_column :requests, :MT4_wed, :integer
    add_column :requests, :MT4_thu, :integer
    add_column :requests, :MT4_fri, :integer
    add_column :requests, :MT4_sat, :integer
    add_column :requests, :MT4_sun, :integer

    add_column :requests, :taw_mon, :integer
    add_column :requests, :taw_tue, :integer
    add_column :requests, :taw_wed, :integer
    add_column :requests, :taw_thu, :integer
    add_column :requests, :taw_fri, :integer
    add_column :requests, :taw_sat, :integer
    add_column :requests, :taw_sun, :integer

    add_column :requests, :form_b_mon, :integer
    add_column :requests, :form_b_tue, :integer
    add_column :requests, :form_b_wed, :integer
    add_column :requests, :form_b_thu, :integer
    add_column :requests, :form_b_fri, :integer
    add_column :requests, :form_b_sat, :integer
    add_column :requests, :form_b_sun, :integer

    add_column :requests, :form_c_mon, :integer
    add_column :requests, :form_c_tue, :integer
    add_column :requests, :form_c_wed, :integer
    add_column :requests, :form_c_thu, :integer
    add_column :requests, :form_c_fri, :integer
    add_column :requests, :form_c_sat, :integer
    add_column :requests, :form_c_sun, :integer

    add_column :requests, :track_and_time_mon, :integer
    add_column :requests, :track_and_time_tue, :integer
    add_column :requests, :track_and_time_wed, :integer
    add_column :requests, :track_and_time_thu, :integer
    add_column :requests, :track_and_time_fri, :integer
    add_column :requests, :track_and_time_sat, :integer
    add_column :requests, :track_and_time_sun, :integer

    add_column :requests, :single_track_mon, :integer
    add_column :requests, :single_track_tue, :integer
    add_column :requests, :single_track_wed, :integer
    add_column :requests, :single_track_thu, :integer
    add_column :requests, :single_track_fri, :integer
    add_column :requests, :single_track_sat, :integer
    add_column :requests, :single_track_sun, :integer

    add_column :requests, :worker_primary_mon, :integer
    add_column :requests, :worker_primary_tue, :integer
    add_column :requests, :worker_primary_wed, :integer
    add_column :requests, :worker_primary_thu, :integer
    add_column :requests, :worker_primary_fri, :integer
    add_column :requests, :worker_primary_sat, :integer
    add_column :requests, :worker_primary_sun, :integer

    add_column :requests, :worker_secondary1_mon, :integer
    add_column :requests, :worker_secondary1_tue, :integer
    add_column :requests, :worker_secondary1_wed, :integer
    add_column :requests, :worker_secondary1_thu, :integer
    add_column :requests, :worker_secondary1_fri, :integer
    add_column :requests, :worker_secondary1_sat, :integer
    add_column :requests, :worker_secondary1_sun, :integer

    add_column :requests, :worker_secondary2_mon, :integer
    add_column :requests, :worker_secondary2_tue, :integer
    add_column :requests, :worker_secondary2_wed, :integer
    add_column :requests, :worker_secondary2_thu, :integer
    add_column :requests, :worker_secondary2_fri, :integer
    add_column :requests, :worker_secondary2_sat, :integer
    add_column :requests, :worker_secondary2_sun, :integer

    add_column :requests, :worker_secondary3_mon, :integer
    add_column :requests, :worker_secondary3_tue, :integer
    add_column :requests, :worker_secondary3_wed, :integer
    add_column :requests, :worker_secondary3_thu, :integer
    add_column :requests, :worker_secondary3_fri, :integer
    add_column :requests, :worker_secondary3_sat, :integer
    add_column :requests, :worker_secondary3_sun, :integer

    add_column :requests, :worker_secondary4_mon, :integer
    add_column :requests, :worker_secondary4_tue, :integer
    add_column :requests, :worker_secondary4_wed, :integer
    add_column :requests, :worker_secondary4_thu, :integer
    add_column :requests, :worker_secondary4_fri, :integer
    add_column :requests, :worker_secondary4_sat, :integer
    add_column :requests, :worker_secondary4_sun, :integer

    add_column :requests, :worker_secondary5_mon, :integer
    add_column :requests, :worker_secondary5_tue, :integer
    add_column :requests, :worker_secondary5_wed, :integer
    add_column :requests, :worker_secondary5_thu, :integer
    add_column :requests, :worker_secondary5_fri, :integer
    add_column :requests, :worker_secondary5_sat, :integer
    add_column :requests, :worker_secondary5_sun, :integer

  end
end
