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

ActiveRecord::Schema.define(version: 20150602145512) do

  create_table "boards", force: :cascade do |t|
    t.integer  "width",      default: 800
    t.integer  "height",     default: 600
    t.string   "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "x_loc",      null: false
    t.integer  "y_loc",      null: false
    t.integer  "board_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "number_of_detectives"
    t.integer  "board_id"
    t.integer  "winner_id"
    t.integer  "maximum_moves"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "moves", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "type"
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "score",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
