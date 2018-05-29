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

ActiveRecord::Schema.define(version: 2018_05_28_222048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "category_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crafts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.index ["location_id"], name: "index_crafts_on_location_id"
  end

  create_table "culinaries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "location_id"
    t.index ["category_id"], name: "index_culinaries_on_category_id"
    t.index ["location_id"], name: "index_culinaries_on_location_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "date"
    t.string "name"
    t.text "description"
    t.bigint "location_id"
    t.bigint "group_month_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_month_id"], name: "index_events_on_group_month_id"
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "group_months", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "native_languages", force: :cascade do |t|
    t.string "us"
    t.bigint "category_language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "indonesia"
    t.string "javanese"
    t.index ["category_language_id"], name: "index_native_languages_on_category_language_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "role", default: "user", null: false
    t.datetime "last_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "crafts", "locations"
  add_foreign_key "culinaries", "categories"
  add_foreign_key "culinaries", "locations"
  add_foreign_key "events", "group_months"
  add_foreign_key "events", "locations"
  add_foreign_key "native_languages", "category_languages"
end
