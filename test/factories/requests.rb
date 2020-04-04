FactoryBot.define do
  factory :request do
    year {'2020'}
    week {'14'}
    contractor {'tasi_track'}
    sequence(:description) {|n| "This is a description of test job #{n}"}
    sequence(:requestor_name) {|n| "Test Name #{n}"}
    sequence(:requestor_email) {|n| "person#{n}@example.com"}
    requestor_phone {'5552220213'}
    sequence(:requestor_project) {|n| "Test Project #{n}"}
    requestor_work_directive {""}
    mon {1}
    tue {0}
    wed {1}
    thu {0}
    fri {1}
    sat {0}
    sun {0}
    night_work {1}
    sequence(:title) {|n| "Test job #{n}"}
    sswps {"dunno"}
    change_notices {"still dunno"}
    rwp {"yes"}
    ocs {"no"}
    disturb {"yes"}
    rrm {"no"}
    foul {"yes"}
    crossings {"no"}
    underground {"yes"}
    flagging {"no"}
    late_reason {""}
    rush_reason {""}
    change_reason {""}
    status {"pending"}
    approval1 {"pending"}
    approval2 {"pending"}
    approval3 {"pending"}
    approval4 {"pending"}
    archived {"no"}
    monday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    tuesday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    wednesday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    thursday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    friday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    saturday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    sunday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none" }}
    admin_notes_mon {"Test"}
    admin_notes_tue {""}
    admin_notes_wed {""}
    admin_notes_thu {""}
    admin_notes_fri {"Test"}
    admin_notes_sat {""}
    admin_notes_sun {""}
    user
  end
end
