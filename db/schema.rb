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

ActiveRecord::Schema.define(version: 2019_01_29_093050) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "testing_with_method"
    t.bigint "external_id"
    t.index ["external_id"], name: "index_call_testings_on_external_id"
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
    t.integer "contact_type"
    t.index ["organization_id"], name: "index_contacts_on_organization_id"
  end

  create_table "externals", force: :cascade do |t|
    t.string "name"
    t.string "questmark_reference"
    t.string "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_externals_on_user_id"
  end

  create_table "meeting_externals", force: :cascade do |t|
    t.bigint "meeting_id"
    t.bigint "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "connect_type"
    t.string "connect_address"
    t.string "room"
    t.boolean "dial_in"
    t.boolean "QM_dial_out"
    t.boolean "audio"
    t.boolean "webRTC"
    t.boolean "ISDN"
    t.boolean "IP"
    t.boolean "URL"
    t.index ["external_id"], name: "index_meeting_externals_on_external_id"
    t.index ["meeting_id"], name: "index_meeting_externals_on_meeting_id"
  end

  create_table "meeting_organizations", force: :cascade do |t|
    t.integer "meeting_id"
    t.integer "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "connect_type"
    t.string "connect_address"
    t.string "room"
    t.boolean "dial_in"
    t.boolean "QM_dial_out"
    t.boolean "audio"
    t.boolean "webRTC"
    t.boolean "ISDN"
    t.boolean "IP"
    t.boolean "URL"
    t.index ["meeting_id", "organization_id"], name: "index_meeting_organizations_on_meeting_id_and_organization_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.string "start_time"
    t.string "end_time"
    t.integer "booked_by"
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
    t.bigint "contact_id"
    t.integer "call_type"
    t.string "room"
    t.index ["contact_id"], name: "index_meetings_on_contact_id"
    t.index ["organization_id"], name: "index_meetings_on_organization_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "meetings_organizations", id: false, force: :cascade do |t|
    t.bigint "meeting_id", null: false
    t.bigint "organization_id", null: false
    t.index ["meeting_id", "organization_id"], name: "index_meetings_organizations_on_meeting_id_and_organization_id"
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
    t.boolean "questmark_status"
    t.bigint "user_id"
    t.string "email"
    t.integer "contact_method"
    t.index ["user_id"], name: "index_organizations_on_user_id"
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
    t.string "contact"
    t.string "address"
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

  add_foreign_key "call_testings", "externals"
  add_foreign_key "comments", "users"
  add_foreign_key "contacts", "organizations"
  add_foreign_key "externals", "users"
  add_foreign_key "meeting_externals", "externals"
  add_foreign_key "meeting_externals", "meetings"
  add_foreign_key "meetings", "contacts"
  add_foreign_key "meetings", "organizations"
  add_foreign_key "meetings", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "sites", "organizations"
end
