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

ActiveRecord::Schema.define(version: 2023_02_01_185036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leaves", force: :cascade do |t|
    t.string "leave_type"
    t.string "total_allocate_leave"
    t.string "used_leave"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leaves_on_user_id"
  end

  create_table "user_leaves", force: :cascade do |t|
    t.string "leave_status"
    t.integer "no_of_leave"
    t.bigint "user_id"
    t.bigint "leave_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leave_id"], name: "index_user_leaves_on_leave_id"
    t.index ["user_id"], name: "index_user_leaves_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "leaves", "users"
  add_foreign_key "user_leaves", "leaves", column: "leave_id"
  add_foreign_key "user_leaves", "users"
end
