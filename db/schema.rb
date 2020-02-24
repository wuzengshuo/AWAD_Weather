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

ActiveRecord::Schema.define(version: 2020_02_22_104237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "cid", limit: 100
    t.string "parent_city", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lon", precision: 20, scale: 8
    t.decimal "lat", precision: 20, scale: 8
  end

  create_table "daily_forecasts", force: :cascade do |t|
    t.integer "address_id"
    t.string "cond_code_d", limit: 100
    t.string "cond_code_n", limit: 100
    t.string "cond_txt_d", limit: 100
    t.string "cond_txt_n", limit: 100
    t.datetime "vdate"
    t.decimal "hum", precision: 14, scale: 4
    t.decimal "pcpn", precision: 14, scale: 4
    t.integer "pop"
    t.integer "pres"
    t.decimal "tmp_max", precision: 14, scale: 4
    t.decimal "tmp_min", precision: 14, scale: 4
    t.integer "uv_index"
    t.integer "vis"
    t.integer "wind_deg"
    t.string "wind_dir", limit: 100
    t.string "wind_sc", limit: 100
    t.integer "wind_spd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hourly_forecasts", force: :cascade do |t|
    t.integer "address_id"
    t.datetime "vtime"
    t.decimal "tmp", precision: 14, scale: 4
    t.string "cond_code", limit: 100
    t.string "cond_txt", limit: 100
    t.integer "wind_deg"
    t.string "wind_dir", limit: 100
    t.string "wind_sc", limit: 100
    t.integer "wind_spd"
    t.decimal "hum", precision: 14, scale: 4
    t.integer "pres"
    t.integer "pop"
    t.integer "dew"
    t.integer "cloud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
