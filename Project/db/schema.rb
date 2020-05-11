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

ActiveRecord::Schema.define(version: 2020_05_11_043556) do

  create_table "attachments", force: :cascade do |t|
    t.string "attachment"
    t.integer "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_attachments_on_comment_id"
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

  create_table "messages", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "text"
    t.integer "inbox_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inbox_id"], name: "index_messages_on_inbox_id"
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

  add_foreign_key "attachments", "comments"
  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "event_ms", "events"
  add_foreign_key "event_ms", "users"
  add_foreign_key "events", "organizations"
  add_foreign_key "events", "users"
  add_foreign_key "events", "venues"
  add_foreign_key "inboxes", "users"
  add_foreign_key "messages", "inboxes"
  add_foreign_key "messages", "users"
  add_foreign_key "org_homepages", "organizations"
  add_foreign_key "organization_ms", "organizations"
  add_foreign_key "organization_ms", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "profile_pages", "users"
  add_foreign_key "votes", "events"
  add_foreign_key "votes", "users"
end
