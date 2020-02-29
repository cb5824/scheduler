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

ActiveRecord::Schema.define(version: 2020_02_28_211643) do

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
    t.integer "monday", default: 0
    t.integer "tuesday", default: 0
    t.integer "wednesday", default: 0
    t.integer "thursday", default: 0
    t.integer "friday", default: 0
    t.integer "saturday", default: 0
    t.integer "sunday", default: 0
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
