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

ActiveRecord::Schema.define(version: 2020_06_03_235858) do

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

  create_table "attachments", force: :cascade do |t|
    t.string "attachment"
    t.integer "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_attachments_on_comment_id"
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
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "event_ms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_ms_on_event_id"
    t.index ["user_id"], name: "index_event_ms_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.integer "user_id", null: false
    t.integer "organization_id", null: false
    t.string "description"
    t.integer "venue_id", null: false
    t.boolean "visibility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "org_homepages", force: :cascade do |t|
    t.string "name"
    t.string "banner"
    t.string "description"
    t.integer "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_org_homepages_on_organization_id"
  end

  create_table "organization_ms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_ms_on_organization_id"
    t.index ["user_id"], name: "index_organization_ms_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "profile_pages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "lastName"
    t.string "picture"
    t.string "bio"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profile_pages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "email"
    t.string "password"
    t.boolean "adm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_votes_on_event_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "attachments", "comments"
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
  add_foreign_key "org_homepages", "organizations"
  add_foreign_key "organization_ms", "organizations"
  add_foreign_key "organization_ms", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "profile_pages", "users"
  add_foreign_key "votes", "events"
  add_foreign_key "votes", "users"
end
