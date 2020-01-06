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

ActiveRecord::Schema.define(version: 2020_01_06_001917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "year", null: false
    t.integer "week", null: false
    t.time "start_time", null: false
    t.time "end_time", null: false
    t.integer "cp1", null: false
    t.integer "mp1", null: false
    t.integer "cp2", null: false
    t.integer "mp2", null: false
    t.string "contractor", null: false
    t.integer "worker_primary", null: false
    t.integer "worker_secondary1"
    t.integer "worker_secondary2"
    t.integer "worker_secondary3"
    t.integer "worker_secondary4"
    t.integer "worker_secondary5"
    t.text "description", null: false
    t.string "single_track", null: false
    t.string "requestor_name", null: false
    t.string "requestor_email", null: false
    t.string "requestor_phone", null: false
    t.string "requestor_project", null: false
    t.string "requestor_work_directive", null: false
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
    t.string "sunday"
    t.string "night_work", null: false
    t.string "MT1"
    t.string "MT2"
    t.string "MT3"
    t.string "MT4"
    t.string "taw"
    t.string "form_b"
    t.string "form_c"
    t.string "track_and_time"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end