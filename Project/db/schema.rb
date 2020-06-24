# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_24_230748) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "chats", force: :cascade do |t|
    t.integer "inbox1_id"
    t.integer "inbox2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inbox1_id"], name: "index_chats_on_inbox1_id"
    t.index ["inbox2_id"], name: "index_chats_on_inbox2_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "text"
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "report_status", default: 0
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "event_ms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "vote_status", default: false
    t.index ["event_id"], name: "index_event_ms_on_event_id"
    t.index ["user_id"], name: "index_event_ms_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "e_name"
    t.integer "user_id"
    t.integer "organization_id"
    t.string "e_description"
    t.integer "venue_id", null: false
    t.boolean "visibility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "start_vote", default: 0
    t.integer "report_status", default: 0
    t.index ["organization_id"], name: "index_events_on_organization_id"
    t.index ["user_id"], name: "index_events_on_user_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "inboxes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_inboxes_on_user_id"
  end

  create_table "invites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_invites_on_event_id"
    t.index ["user_id"], name: "index_invites_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "text"
    t.integer "chat_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "msg_status", default: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "organization_ms", force: :cascade do |t|
    t.integer "organization_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_ms_on_organization_id"
    t.index ["user_id"], name: "index_organization_ms_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "o_name"
    t.integer "user_id", null: false
    t.string "o_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "name"
    t.string "lastName"
    t.string "bio"
    t.string "address"
    t.string "email"
    t.string "password"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.string "v_name"
    t.string "v_description"
    t.string "v_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "event_id", null: false
    t.date "date"
    t.integer "n_votes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_votes_on_event_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "event_ms", "events"
  add_foreign_key "event_ms", "users"
  add_foreign_key "events", "organizations"
  add_foreign_key "events", "users"
  add_foreign_key "events", "venues"
  add_foreign_key "inboxes", "users"
  add_foreign_key "invites", "events"
  add_foreign_key "invites", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "users"
  add_foreign_key "organization_ms", "organizations"
  add_foreign_key "organization_ms", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "votes", "events"
end
