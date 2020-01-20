FactoryBot.define do
  factory :request do
    year {'2020'}
    week {'10'}
    start_time{'2000-01-01 01:00:00 UTC'}
    end_time{'2000-01-01 02:00:00 UTC'}
    cp1 {1}
    mp1 {2}
    cp2 {7}
    mp2 {3}
    contractor {'tasi_track'}
    worker_primary {5}
    worker_secondary1 {2}
    worker_secondary2 {3}
    worker_secondary3 {1}
    worker_secondary4 {1}
    worker_secondary5 {1}
    sequence(:description) {|n| "This is a description of test job #{n}"}
    single_track {"multi"}
    sequence(:requestor_name) {|n| "Test Name #{n}"}
    sequence(:requestor_email) {|n| "person#{n}@example.com"}
    requestor_phone {'5552220213'}
    sequence(:requestor_project) {|n| "Test Project #{n}"}
    requestor_work_directive {""}
    monday {"monday"}
    tuesday {""}
    wednesday {"wednesday"}
    thursday {""}
    friday {"friday"}
    saturday {""}
    sunday {""}
    night_work {"1"}
    MT1 {"MT1"}
    MT2 {"MT2"}
    taw {"taw"}
    form_b {"form_b"}
    form_c {"form_c"}
    track_and_time {"track_and_time"}
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
    user
  end
end
