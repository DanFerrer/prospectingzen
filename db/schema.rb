# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150211014910) do

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "previouscompany"
    t.string   "notes"
    t.string   "personalnote"
    t.date     "duedate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "birthday"
  end

  create_table "events", force: true do |t|
    t.string   "eventname"
    t.string   "eventlocation"
    t.date     "eventdate"
    t.string   "eventnotes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "spreadsheet_file_name"
    t.string   "spreadsheet_content_type"
    t.integer  "spreadsheet_file_size"
    t.datetime "spreadsheet_updated_at"
    t.date     "deadline"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "follows", force: true do |t|
    t.integer  "followable_id",                   null: false
    t.string   "followable_type",                 null: false
    t.integer  "follower_id",                     null: false
    t.string   "follower_type",                   null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows"

  create_table "leadgens", force: true do |t|
    t.text     "companies"
    t.date     "deadline"
    t.integer  "leadsper"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "leadgensheet_file_name"
    t.string   "leadgensheet_content_type"
    t.integer  "leadgensheet_file_size"
    t.datetime "leadgensheet_updated_at"
    t.text     "seniority",                 limit: 255
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "eventname"
    t.string   "eventlocation"
    t.string   "eventnotes"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
