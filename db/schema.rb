# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_07_124949) do
  create_table "airports", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "flight_id"
    t.integer "passenger_id"
    t.index ["passenger_id"], name: "index_bookings_on_passenger_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "departure_airport_id"
    t.string "arrival_airport_id"
    t.datetime "start"
    t.integer "duration"
    t.integer "booking_id"
    t.integer "passenger_id"
    t.index ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id"
    t.index ["booking_id"], name: "index_flights_on_booking_id"
    t.index ["departure_airport_id"], name: "index_flights_on_departure_airport_id"
    t.index ["passenger_id"], name: "index_flights_on_passenger_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
  end

end
