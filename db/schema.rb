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

ActiveRecord::Schema.define(version: 20140501212526) do

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "contact_email"
    t.string   "mobile"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spud_admin_permissions", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.boolean  "access"
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spud_users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "super_admin"
    t.string   "login",                           null: false
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token",               null: false
    t.string   "single_access_token",             null: false
    t.string   "perishable_token",                null: false
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time_zone"
  end

  add_index "spud_users", ["email"], name: "index_spud_users_on_email"
  add_index "spud_users", ["login"], name: "index_spud_users_on_login"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "college"
    t.string   "dept"
    t.string   "sem"
    t.boolean  "getting_laptop", default: false
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "phone"
    t.boolean  "previous_camp",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
