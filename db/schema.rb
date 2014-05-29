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

ActiveRecord::Schema.define(version: 20140529205626) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "event_date"
    t.string   "added_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "author"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.string   "status",         default: "approved"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "volunteer_qas", force: true do |t|
    t.integer  "volunteer_id",          null: false
    t.integer  "volunteer_question_id", null: false
    t.text     "answer",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteer_questions", force: true do |t|
    t.string   "question",   null: false
    t.string   "qtype",      null: false
    t.string   "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", force: true do |t|
    t.string   "name"
    t.string   "email",                                   null: false
    t.string   "gender"
    t.integer  "sem"
    t.string   "college"
    t.string   "branch"
    t.string   "phone"
    t.boolean  "getting_laptop", default: false
    t.string   "previous_camp"
    t.boolean  "ready_to_pay",   default: false
    t.string   "t_shirt_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",         default: "not_verified", null: false
  end

  add_index "volunteers", ["email"], name: "index_volunteers_on_email", unique: true

end
