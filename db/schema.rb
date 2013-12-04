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

ActiveRecord::Schema.define(version: 20131117140318) do

  create_table "entities", force: true do |t|
    t.string   "type",       limit: 50
    t.string   "json"
    t.string   "key01",      limit: 11
    t.string   "key02",      limit: 11
    t.string   "key03",      limit: 11
    t.string   "key04",      limit: 11
    t.string   "key05",      limit: 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "entities", ["type", "key01", "key02", "key03", "key04", "key05"], name: "entities_idx", using: :btree

  create_table "links", force: true do |t|
    t.integer  "entity_id"
    t.integer  "link_to_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "links", ["entity_id", "link_to_id"], name: "index_links_on_entity_id_and_link_to_id", using: :btree

end
