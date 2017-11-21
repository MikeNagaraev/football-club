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

ActiveRecord::Schema.define(version: 20171121184510) do

  create_table "players", primary_key: "player_id", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "number"
    t.string   "citizenship"
    t.integer  "weight"
    t.integer  "height"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", primary_key: "team_id", force: :cascade do |t|
    t.integer  "tournament_team_id"
    t.string   "team_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["tournament_team_id"], name: "index_teams_on_tournament_team_id"
  end

  create_table "tournament_players", primary_key: "tournament_player_id", force: :cascade do |t|
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "yellow_cards"
    t.integer  "red_cards"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_players_on_tournament_id"
  end

  create_table "tournament_teams", primary_key: "tournament_team_id", force: :cascade do |t|
    t.integer  "tournament_id"
    t.integer  "position"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tournament_id"], name: "index_tournament_teams_on_tournament_id"
  end

  create_table "tournaments", primary_key: "tournament_id", force: :cascade do |t|
    t.string   "tournament_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
