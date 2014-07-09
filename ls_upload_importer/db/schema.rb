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

ActiveRecord::Schema.define(version: 20140709215631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.string   "description"
    t.float    "price"
    t.integer  "merchant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["merchant_id"], name: "index_items_on_merchant_id", using: :btree

  create_table "merchants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchasers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "count"
    t.integer  "item_id"
    t.integer  "purchaser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["item_id"], name: "index_purchases_on_item_id", using: :btree
  add_index "purchases", ["purchaser_id"], name: "index_purchases_on_purchaser_id", using: :btree

  create_table "uploads", force: true do |t|
    t.string   "filename"
    t.binary   "data"
    t.float    "revenue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
