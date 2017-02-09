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

ActiveRecord::Schema.define(version: 20170209063133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "field_id"
    t.integer  "match_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_comments_on_field_id", using: :btree
    t.index ["match_id"], name: "index_comments_on_match_id", using: :btree
    t.index ["player_id"], name: "index_comments_on_player_id", using: :btree
    t.index ["team_id"], name: "index_comments_on_team_id", using: :btree
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "additional_info"
    t.float    "rating"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "img"
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "field_id"
    t.string   "name"
    t.string   "team_1"
    t.string   "team_2"
    t.date     "date"
    t.datetime "time"
    t.text     "additional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["field_id"], name: "index_matches_on_field_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "passwrod"
    t.date     "birthdate"
    t.string   "genre"
    t.string   "position_1"
    t.string   "position_2"
    t.text     "additional_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "rating"
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "name"
    t.string   "player_1"
    t.string   "player_2"
    t.string   "player_3"
    t.string   "player_4"
    t.string   "player_5"
    t.string   "player_6"
    t.string   "player_7"
    t.string   "player_8"
    t.string   "player_9"
    t.string   "player_10"
    t.string   "player_11"
    t.string   "player_12"
    t.string   "player_13"
    t.string   "player_14"
    t.string   "player_15"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_teams_on_player_id", using: :btree
  end

end
