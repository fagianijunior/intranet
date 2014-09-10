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

ActiveRecord::Schema.define(version: 20140907030849) do

  create_table "branch_contacts", force: true do |t|
    t.integer  "branch_id"
    t.integer  "contacttype_id"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branch_contacts", ["branch_id"], name: "index_branch_contacts_on_branch_id", using: :btree
  add_index "branch_contacts", ["contacttype_id"], name: "index_branch_contacts_on_contacttype_id", using: :btree

  create_table "branches", force: true do |t|
    t.string   "branch"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["city_id"], name: "index_branches_on_city_id", using: :btree
  add_index "branches", ["state_id"], name: "index_branches_on_state_id", using: :btree

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_types", force: true do |t|
    t.string   "type"
    t.string   "regex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_contacts", force: true do |t|
    t.integer  "user_id"
    t.integer  "contacttype_id"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_contacts", ["contacttype_id"], name: "index_user_contacts_on_contacttype_id", using: :btree
  add_index "user_contacts", ["user_id"], name: "index_user_contacts_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar"
    t.integer  "gender_id"
    t.date     "birth_date"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "position_id"
    t.integer  "branch_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["branch_id"], name: "index_users_on_branch_id", using: :btree
  add_index "users", ["city_id"], name: "index_users_on_city_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["gender_id"], name: "index_users_on_gender_id", using: :btree
  add_index "users", ["position_id"], name: "index_users_on_position_id", using: :btree
  add_index "users", ["state_id"], name: "index_users_on_state_id", using: :btree

end
