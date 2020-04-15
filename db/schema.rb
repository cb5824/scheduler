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

ActiveRecord::Schema.define(version: 2020_04_10_001705) do

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
    t.string "contractor"
    t.text "description", null: false
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
    t.hstore "monday_hash", default: {}, null: false
    t.hstore "tuesday_hash", default: {}, null: false
    t.hstore "wednesday_hash", default: {}, null: false
    t.hstore "thursday_hash", default: {}, null: false
    t.hstore "friday_hash", default: {}, null: false
    t.hstore "saturday_hash", default: {}, null: false
    t.hstore "sunday_hash", default: {}, null: false
    t.text "admin_notes_mon", default: ""
    t.text "admin_notes_tue", default: ""
    t.text "admin_notes_wed", default: ""
    t.text "admin_notes_thu", default: ""
    t.text "admin_notes_fri", default: ""
    t.text "admin_notes_sat", default: ""
    t.text "admin_notes_sun", default: ""
    t.text "inspector_notes_mon", default: ""
    t.text "inspector_notes_tue", default: ""
    t.text "inspector_notes_wed", default: ""
    t.text "inspector_notes_thu", default: ""
    t.text "inspector_notes_fri", default: ""
    t.text "inspector_notes_sat", default: ""
    t.text "inspector_notes_sun", default: ""
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
