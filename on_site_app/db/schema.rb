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

ActiveRecord::Schema.define(version: 20170517210021) do

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

  create_table "posts", force: :cascade do |t|
    t.string   "user"
    t.string   "content"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "title"
    t.integer  "cached_votes_total", default: 0
    t.integer  "cached_votes_score", default: 0
    t.integer  "cached_votes_up",    default: 0
    t.integer  "cached_votes_down",  default: 0
    t.index ["cached_votes_down"], name: "index_posts_on_cached_votes_down", using: :btree
    t.index ["cached_votes_score"], name: "index_posts_on_cached_votes_score", using: :btree
    t.index ["cached_votes_total"], name: "index_posts_on_cached_votes_total", using: :btree
    t.index ["cached_votes_up"], name: "index_posts_on_cached_votes_up", using: :btree
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "whatever"
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

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  add_foreign_key "trauma_items", "first_aid_items", column: "first_aid_items_id"
  add_foreign_key "trauma_items", "traumas", column: "traumas_id"
end
