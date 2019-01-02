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

ActiveRecord::Schema.define(version: 2019_01_02_103930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "call_testings", force: :cascade do |t|
    t.string "contact_name"
    t.string "contact_email"
    t.string "contact_phone"
    t.string "ip_address"
    t.string "url"
    t.string "isdn"
    t.string "skype_detail"
    t.string "other"
    t.integer "testing_status"
    t.integer "testing_with"
    t.boolean "testing_method"
    t.string "date"
    t.string "room"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "testing_with_method"
    t.index ["organization_id"], name: "index_call_testings_on_organization_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "contact_phone"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_contacts_on_organization_id"
  end

  create_table "externals", force: :cascade do |t|
    t.string "name"
    t.string "questmark_reference"
    t.string "room"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_externals_on_organization_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "duration"
    t.string "org_name"
    t.string "booked_by"
    t.string "operator"
    t.text "agenda"
    t.boolean "call_recording"
    t.boolean "test_call"
    t.boolean "cancel_call"
    t.boolean "setup_call"
    t.boolean "concierage"
    t.bigint "organization_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_meetings_on_organization_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "street"
    t.string "postal_code"
    t.string "region"
    t.string "country"
    t.string "main_phone_contact"
    t.string "fax"
    t.string "website"
    t.string "other_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "org_type"
    t.integer "user_type"
    t.string "questmark_reference"
    t.boolean "questmark_status"
    t.bigint "users_id"
    t.index ["users_id"], name: "index_organizations_on_users_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "connect_type"
    t.string "connect_address"
    t.integer "participant_type"
    t.integer "call_type"
    t.string "org_site"
    t.boolean "dial_in"
    t.boolean "QM_dialout"
    t.boolean "audio"
    t.boolean "webRTC"
    t.boolean "ISDN"
    t.boolean "IP"
    t.boolean "URL"
    t.string "external_room"
    t.bigint "organization_id"
    t.bigint "external_id"
    t.bigint "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["external_id"], name: "index_participants_on_external_id"
    t.index ["meeting_id"], name: "index_participants_on_meeting_id"
    t.index ["organization_id"], name: "index_participants_on_organization_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "site_name"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_sites_on_organization_id"
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
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "call_testings", "organizations"
  add_foreign_key "comments", "users"
  add_foreign_key "contacts", "organizations"
  add_foreign_key "externals", "organizations"
  add_foreign_key "meetings", "organizations"
  add_foreign_key "meetings", "users"
  add_foreign_key "organizations", "users", column: "users_id"
  add_foreign_key "participants", "externals"
  add_foreign_key "participants", "meetings"
  add_foreign_key "participants", "organizations"
  add_foreign_key "sites", "organizations"
end
