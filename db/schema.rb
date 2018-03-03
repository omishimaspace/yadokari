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

ActiveRecord::Schema.define(version: 20180303212313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservations", force: :cascade do |t|
    t.integer "yado_id"
    t.integer "room_id"
    t.string "name"
    t.string "email"
    t.string "tel"
    t.date "check_in_on"
    t.date "check_out_on"
    t.string "check_in_time"
    t.integer "mens_number"
    t.integer "womens_number"
    t.string "purpose_of_use"
    t.string "payment_method"
    t.string "coupon"
    t.string "note"
    t.string "status"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_reservations_on_token"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "yado_id", null: false
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["yado_id"], name: "index_rooms_on_yado_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "reservation_id"
    t.string "schedule_type"
    t.text "note"
    t.date "started_at"
    t.date "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["started_at"], name: "index_schedules_on_started_at"
  end

  create_table "yados", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
