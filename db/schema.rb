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

ActiveRecord::Schema.define(version: 2019_12_03_161738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "package_id"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_bookings_on_package_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "price"
    t.string "photo"
    t.string "car_category"
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_policies", force: :cascade do |t|
    t.bigint "company_id"
    t.integer "max_price_train", default: 0
    t.integer "max_price_hotel", default: 0
    t.integer "max_price_car", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_policies_on_company_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "stars"
    t.integer "price"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "photo2"
    t.string "photo3"
    t.string "photo4"
    t.string "photo5"
    t.string "logo"
  end

  create_table "packages", force: :cascade do |t|
    t.bigint "hotel_id"
    t.bigint "car_id"
    t.string "dep_city"
    t.string "arr_city"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "train_from_id"
    t.bigint "train_to_id"
    t.integer "price", default: 0, null: false
    t.float "latitude"
    t.float "longitude"
    t.float "latitude2"
    t.float "longitude2"
    t.integer "overnights"
    t.integer "car_price"
    t.integer "hotel_price"
    t.integer "train_price"
    t.index ["car_id"], name: "index_packages_on_car_id"
    t.index ["hotel_id"], name: "index_packages_on_hotel_id"
    t.index ["train_from_id"], name: "index_packages_on_train_from_id"
    t.index ["train_to_id"], name: "index_packages_on_train_to_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "carrier_name"
    t.string "dep_city"
    t.string "arr_city"
    t.string "train_number"
    t.integer "price"
    t.string "category"
    t.string "photo"
    t.string "dep_time"
    t.string "arr_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "company_id"
    t.boolean "admin", default: false, null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "packages"
  add_foreign_key "bookings", "users"
  add_foreign_key "company_policies", "companies"
  add_foreign_key "packages", "cars"
  add_foreign_key "packages", "hotels"
  add_foreign_key "packages", "trains", column: "train_from_id"
  add_foreign_key "packages", "trains", column: "train_to_id"
  add_foreign_key "users", "companies"
end
