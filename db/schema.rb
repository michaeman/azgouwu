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

ActiveRecord::Schema.define(version: 20150124084533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.boolean  "visa_service"
    t.boolean  "flight_service"
    t.boolean  "hotel_service"
    t.boolean  "pickup_service"
    t.boolean  "standard_service"
    t.text     "notes"
    t.integer  "customer_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "bookings", ["customer_id"], name: "index_bookings_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "addr_line_1"
    t.string   "addr_line_2"
    t.string   "addr_line_3"
    t.string   "post_code"
    t.string   "addr_city"
    t.string   "addr_state"
    t.string   "phone"
    t.string   "overseas_phone"
    t.string   "reference_num"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "bookings", "customers"
end
