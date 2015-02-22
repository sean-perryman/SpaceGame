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

ActiveRecord::Schema.define(version: 20150222161151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captains", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "world_id"
    t.integer  "cartel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "captains", ["user_id"], name: "index_captains_on_user_id", using: :btree

  create_table "cartels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "base_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planet_inventories", force: :cascade do |t|
    t.integer  "planet_id"
    t.integer  "item_id"
    t.integer  "amount"
    t.float    "price_modifier"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "planet_inventories", ["item_id"], name: "index_planet_inventories_on_item_id", using: :btree
  add_index "planet_inventories", ["planet_id"], name: "index_planet_inventories_on_planet_id", using: :btree

  create_table "planets", force: :cascade do |t|
    t.string   "name"
    t.integer  "owned_by"
    t.boolean  "planetary_defense"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "world_id"
  end

  add_index "planets", ["world_id"], name: "index_planets_on_world_id", using: :btree

  create_table "player_ships", force: :cascade do |t|
    t.integer  "captain_id"
    t.integer  "ship_id"
    t.string   "name"
    t.integer  "fuel_total"
    t.integer  "fuel_remaining"
    t.integer  "cargo_spaces"
    t.integer  "fighters"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "player_ships", ["captain_id"], name: "index_player_ships_on_captain_id", using: :btree
  add_index "player_ships", ["ship_id"], name: "index_player_ships_on_ship_id", using: :btree

  create_table "ship_inventories", force: :cascade do |t|
    t.integer  "ship_id"
    t.integer  "item_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ship_inventories", ["item_id"], name: "index_ship_inventories_on_item_id", using: :btree
  add_index "ship_inventories", ["ship_id"], name: "index_ship_inventories_on_ship_id", using: :btree

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "base_cargo"
    t.integer  "base_fuel"
    t.integer  "base_fighters"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "captains", "users"
  add_foreign_key "planet_inventories", "items"
  add_foreign_key "planet_inventories", "planets"
  add_foreign_key "planets", "worlds"
  add_foreign_key "player_ships", "captains"
  add_foreign_key "player_ships", "ships"
  add_foreign_key "ship_inventories", "items"
  add_foreign_key "ship_inventories", "ships"
end
