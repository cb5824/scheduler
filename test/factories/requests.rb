FactoryBot.define do
  factory :request do
    year {Time.now.year}
    week {Date.today.cweek}
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
    night_work {0}
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
    monday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no", "other"=>0, "inacc_track"=>0 }}
    tuesday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "other"=>0, "inacc_track"=>0 }}
    wednesday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no", "other"=>0, "inacc_track"=>0  }}
    thursday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no", "other"=>0, "inacc_track"=>0 }}
    friday_hash{{"start_time"=>"01:00", "end_time"=>"02:00", "cp1"=>1, "cp2"=>7, "mp1"=>2, "mp2"=>3, "MT1"=>1, "MT2"=>1, "MT3"=>1, "MT4"=>1, "taw"=>1, "form_b"=>1, "form_c"=>1, "track_and_time"=>1, "single_track"=>"multi", "worker_primary"=>"A", "worker_secondary1"=>"X", "worker_secondary2"=>"Q", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no", "other"=>0, "inacc_track"=>0  }}
    saturday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no" }}
    sunday_hash{{"start_time"=>"", "end_time"=>"", "cp1"=>1, "cp2"=>1, "mp1"=>"", "mp2"=>"", "MT1"=>0, "MT2"=>0, "MT3"=>0, "MT4"=>0, "taw"=>0, "form_b"=>0, "form_c"=>0, "track_and_time"=>0, "worker_primary"=>"none", "worker_secondary1"=>"none", "worker_secondary2"=>"none", "worker_secondary3"=>"none", "worker_secondary4"=>"none", "worker_secondary5"=>"none", "cancelled"=>"no", "other"=>0, "inacc_track"=>0 }}
    admin_notes_mon {"Test"}
    admin_notes_tue {""}
    admin_notes_wed {""}
    admin_notes_thu {""}
    admin_notes_fri {"Test"}
    admin_notes_sat {""}
    admin_notes_sun {""}
    inspector_notes_mon {"Test"}
    inspector_notes_tue {""}
    inspector_notes_wed {""}
    inspector_notes_thu {""}
    inspector_notes_fri {"Test"}
    inspector_notes_sat {""}
    inspector_notes_sun {""}
    requestor_notes_mon {"Test"}
    requestor_notes_tue {""}
    requestor_notes_wed {""}
    requestor_notes_thu {""}
    requestor_notes_fri {"Test"}
    requestor_notes_sat {""}
    requestor_notes_sun {""}
    user
    after(:create) do |request, evaluator|
      request.pending = FactoryBot.create(:pending)
    end
    after(:create) do |request, evaluator|
      request.approval = FactoryBot.create(:approval)
    end
  end
end
