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

ActiveRecord::Schema.define(version: 20171125060804) do

  create_table "passes", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "content",     limit: 65535
    t.integer  "price",       limit: 4
    t.integer  "time",        limit: 4
    t.string   "salonname",   limit: 255
    t.text     "conditions",  limit: 65535
    t.string   "place",       limit: 255
    t.string   "phonenumber", limit: 255
    t.integer  "distance",    limit: 4
    t.integer  "salon_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salons", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "salon_name",             limit: 255
    t.string   "place",                  limit: 255
    t.integer  "distance",               limit: 4
    t.string   "image",                  limit: 255
    t.string   "image2",                 limit: 255
    t.integer  "staff",                  limit: 4
    t.integer  "seat",                   limit: 4
    t.string   "phone_number",           limit: 255
    t.text     "pr",                     limit: 65535
    t.string   "hpb_url",                limit: 255
    t.string   "ig_url",                 limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "salons", ["email"], name: "index_salons_on_email", unique: true, using: :btree
  add_index "salons", ["reset_password_token"], name: "index_salons_on_reset_password_token", unique: true, using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "name",                   limit: 255
    t.string   "school_name",            limit: 255
    t.integer  "grade",                  limit: 4
    t.string   "image",                  limit: 255
    t.string   "shikaku",                limit: 255
    t.text     "pr",                     limit: 65535
    t.string   "ig_url",                 limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

end