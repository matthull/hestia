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

ActiveRecord::Schema.define(version: 20140729191919) do

  create_table "cooking_sessions", force: true do |t|
    t.datetime "first_reading_at"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dish_id"
    t.datetime "last_reading_at"
  end

  create_table "dishes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readings", force: true do |t|
    t.datetime "taken_at"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cooking_session_id"
    t.integer  "sensor_id"
    t.string   "metric"
    t.string   "description"
  end

  create_table "sensors", force: true do |t|
    t.string   "name"
    t.string   "alias"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.string   "metric"
  end

end
