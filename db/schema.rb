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

ActiveRecord::Schema.define(version: 20180308020030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "yado_id"
    t.integer "room_id"
    t.string "name"
    t.string "email"
    t.string "tel"
    t.date "check_in_on"
    t.date "check_out_on"
    t.string "check_in_time"
    t.integer "men_number", default: 0, null: false
    t.integer "women_number", default: 0, null: false
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
    t.date "started_on"
    t.date "finished_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["started_on"], name: "index_schedules_on_started_on"
  end

  create_table "yados", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
