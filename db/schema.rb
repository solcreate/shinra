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

ActiveRecord::Schema.define(version: 20131205021749) do

  create_table "links", force: true do |t|
    t.integer  "thing_id"
    t.integer  "link_thing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["thing_id", "link_thing_id"], name: "index_links_on_thing_id_and_link_thing_id", using: :btree

  create_table "samples", force: true do |t|
    t.string   "name"
    t.decimal  "price",      precision: 10, scale: 0
    t.datetime "started_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
