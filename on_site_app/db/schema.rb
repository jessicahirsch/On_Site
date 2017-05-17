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

ActiveRecord::Schema.define(version: 20170517150234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "first_aid_items", force: :cascade do |t|
    t.string   "name"
    t.string   "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "coords"
    t.text     "uses"
  end

  create_table "trauma_items", force: :cascade do |t|
    t.integer  "traumas_id"
    t.integer  "first_aid_items_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["first_aid_items_id"], name: "index_trauma_items_on_first_aid_items_id", using: :btree
    t.index ["traumas_id"], name: "index_trauma_items_on_traumas_id", using: :btree
  end

  create_table "traumas", force: :cascade do |t|
    t.string   "name"
    t.string   "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "trauma_items", "first_aid_items", column: "first_aid_items_id"
  add_foreign_key "trauma_items", "traumas", column: "traumas_id"
end
