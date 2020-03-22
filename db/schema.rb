# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_20_010720) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "changelogs", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.hstore "old_values", default: {}, null: false
    t.hstore "new_values", default: {}, null: false
    t.string "comments", default: "-"
    t.index ["request_id"], name: "index_changelogs_on_request_id"
    t.index ["user_id"], name: "index_changelogs_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_notes_on_request_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "year", null: false
    t.integer "week", null: false
    t.time "start_time"
    t.time "end_time"
    t.integer "cp1"
    t.integer "mp1"
    t.integer "cp2"
    t.integer "mp2"
    t.string "contractor"
    t.string "worker_primary"
    t.string "worker_secondary1"
    t.string "worker_secondary2"
    t.string "worker_secondary3"
    t.string "worker_secondary4"
    t.string "worker_secondary5"
    t.text "description", null: false
    t.boolean "single_track"
    t.string "requestor_name", null: false
    t.string "requestor_email", null: false
    t.string "requestor_phone", null: false
    t.string "requestor_project", null: false
    t.string "requestor_work_directive", null: false
    t.integer "mon", default: 0
    t.integer "tue", default: 0
    t.integer "wed", default: 0
    t.integer "thu", default: 0
    t.integer "fri", default: 0
    t.integer "sat", default: 0
    t.integer "sun", default: 0
    t.integer "night_work", default: 0
    t.integer "MT1", default: 0
    t.integer "MT2", default: 0
    t.integer "MT3", default: 0
    t.integer "MT4", default: 0
    t.integer "taw", default: 0
    t.integer "form_b", default: 0
    t.integer "form_c", default: 0
    t.integer "track_and_time", default: 0
    t.string "title"
    t.string "sswps"
    t.string "change_notices"
    t.string "rwp"
    t.string "ocs"
    t.string "disturb"
    t.string "rrm"
    t.string "foul"
    t.string "crossings"
    t.string "underground"
    t.string "flagging"
    t.string "late_reason"
    t.string "rush_reason"
    t.string "change_reason"
    t.string "status", default: "pending"
    t.string "approval1", default: "pending"
    t.string "approval2", default: "pending"
    t.string "approval3", default: "pending"
    t.string "approval4", default: "pending"
    t.string "archived", default: "no"
    t.string "color", default: "color_ffffff"
    t.time "start_time_mon"
    t.time "start_time_tue"
    t.time "start_time_wed"
    t.time "start_time_thu"
    t.time "start_time_fri"
    t.time "start_time_sat"
    t.time "start_time_sun"
    t.time "end_time_mon"
    t.time "end_time_tue"
    t.time "end_time_wed"
    t.time "end_time_thu"
    t.time "end_time_fri"
    t.time "end_time_sat"
    t.time "end_time_sun"
    t.integer "cp1_mon"
    t.integer "cp1_tue"
    t.integer "cp1_wed"
    t.integer "cp1_thu"
    t.integer "cp1_fri"
    t.integer "cp1_sat"
    t.integer "cp1_sun"
    t.integer "cp2_mon"
    t.integer "cp2_tue"
    t.integer "cp2_wed"
    t.integer "cp2_thu"
    t.integer "cp2_fri"
    t.integer "cp2_sat"
    t.integer "cp2_sun"
    t.integer "mp1_mon"
    t.integer "mp1_tue"
    t.integer "mp1_wed"
    t.integer "mp1_thu"
    t.integer "mp1_fri"
    t.integer "mp1_sat"
    t.integer "mp1_sun"
    t.integer "mp2_mon"
    t.integer "mp2_tue"
    t.integer "mp2_wed"
    t.integer "mp2_thu"
    t.integer "mp2_fri"
    t.integer "mp2_sat"
    t.integer "mp2_sun"
    t.integer "MT1_mon"
    t.integer "MT1_tue"
    t.integer "MT1_wed"
    t.integer "MT1_thu"
    t.integer "MT1_fri"
    t.integer "MT1_sat"
    t.integer "MT1_sun"
    t.integer "MT2_mon"
    t.integer "MT2_tue"
    t.integer "MT2_wed"
    t.integer "MT2_thu"
    t.integer "MT2_fri"
    t.integer "MT2_sat"
    t.integer "MT2_sun"
    t.integer "MT3_mon"
    t.integer "MT3_tue"
    t.integer "MT3_wed"
    t.integer "MT3_thu"
    t.integer "MT3_fri"
    t.integer "MT3_sat"
    t.integer "MT3_sun"
    t.integer "MT4_mon"
    t.integer "MT4_tue"
    t.integer "MT4_wed"
    t.integer "MT4_thu"
    t.integer "MT4_fri"
    t.integer "MT4_sat"
    t.integer "MT4_sun"
    t.integer "taw_mon"
    t.integer "taw_tue"
    t.integer "taw_wed"
    t.integer "taw_thu"
    t.integer "taw_fri"
    t.integer "taw_sat"
    t.integer "taw_sun"
    t.integer "form_b_mon"
    t.integer "form_b_tue"
    t.integer "form_b_wed"
    t.integer "form_b_thu"
    t.integer "form_b_fri"
    t.integer "form_b_sat"
    t.integer "form_b_sun"
    t.integer "form_c_mon"
    t.integer "form_c_tue"
    t.integer "form_c_wed"
    t.integer "form_c_thu"
    t.integer "form_c_fri"
    t.integer "form_c_sat"
    t.integer "form_c_sun"
    t.integer "track_and_time_mon"
    t.integer "track_and_time_tue"
    t.integer "track_and_time_wed"
    t.integer "track_and_time_thu"
    t.integer "track_and_time_fri"
    t.integer "track_and_time_sat"
    t.integer "track_and_time_sun"
    t.integer "single_track_mon"
    t.integer "single_track_tue"
    t.integer "single_track_wed"
    t.integer "single_track_thu"
    t.integer "single_track_fri"
    t.integer "single_track_sat"
    t.integer "single_track_sun"
    t.integer "worker_primary_mon"
    t.integer "worker_primary_tue"
    t.integer "worker_primary_wed"
    t.integer "worker_primary_thu"
    t.integer "worker_primary_fri"
    t.integer "worker_primary_sat"
    t.integer "worker_primary_sun"
    t.integer "worker_secondary1_mon"
    t.integer "worker_secondary1_tue"
    t.integer "worker_secondary1_wed"
    t.integer "worker_secondary1_thu"
    t.integer "worker_secondary1_fri"
    t.integer "worker_secondary1_sat"
    t.integer "worker_secondary1_sun"
    t.integer "worker_secondary2_mon"
    t.integer "worker_secondary2_tue"
    t.integer "worker_secondary2_wed"
    t.integer "worker_secondary2_thu"
    t.integer "worker_secondary2_fri"
    t.integer "worker_secondary2_sat"
    t.integer "worker_secondary2_sun"
    t.integer "worker_secondary3_mon"
    t.integer "worker_secondary3_tue"
    t.integer "worker_secondary3_wed"
    t.integer "worker_secondary3_thu"
    t.integer "worker_secondary3_fri"
    t.integer "worker_secondary3_sat"
    t.integer "worker_secondary3_sun"
    t.integer "worker_secondary4_mon"
    t.integer "worker_secondary4_tue"
    t.integer "worker_secondary4_wed"
    t.integer "worker_secondary4_thu"
    t.integer "worker_secondary4_fri"
    t.integer "worker_secondary4_sat"
    t.integer "worker_secondary4_sun"
    t.integer "worker_secondary5_mon"
    t.integer "worker_secondary5_tue"
    t.integer "worker_secondary5_wed"
    t.integer "worker_secondary5_thu"
    t.integer "worker_secondary5_fri"
    t.integer "worker_secondary5_sat"
    t.integer "worker_secondary5_sun"
    t.hstore "monday_hash", default: {}, null: false
    t.hstore "tuesday_hash", default: {}, null: false
    t.hstore "wednesday_hash", default: {}, null: false
    t.hstore "thursday_hash", default: {}, null: false
    t.hstore "friday_hash", default: {}, null: false
    t.hstore "saturday_hash", default: {}, null: false
    t.hstore "sunday_hash", default: {}, null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone"
    t.string "company"
    t.string "role", default: "user"
    t.integer "approval_group", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weeklies", force: :cascade do |t|
    t.bigint "request_id"
    t.string "start"
    t.string "end"
    t.boolean "taw"
    t.boolean "form_b"
    t.boolean "form_c"
    t.boolean "track_and_time"
    t.string "mon_workers"
    t.string "tue_workers"
    t.string "wed_workers"
    t.string "thu_workers"
    t.string "fri_workers"
    t.string "sat_workers"
    t.string "sun_workers"
    t.index ["request_id"], name: "index_weeklies_on_request_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
