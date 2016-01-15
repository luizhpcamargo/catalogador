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

ActiveRecord::Schema.define(version: 20151129041224) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "codename"
    t.string   "role"
    t.string   "type"
    t.date     "birth"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "characters_media", force: :cascade do |t|
    t.integer  "media_id"
    t.integer  "character_id"
    t.integer  "character_role_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "original_title"
    t.string   "original_subtitle"
    t.decimal  "value"
    t.string   "description"
    t.string   "file"
    t.string   "format"
    t.string   "size"
    t.string   "barcode"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "user_media", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "media_id"
    t.decimal  "price"
    t.decimal  "sell_price"
    t.string   "place"
    t.string   "state"
    t.date     "acquired_at"
    t.date     "emitted_at"
    t.string   "loaned_to"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "state"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
