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

ActiveRecord::Schema.define(version: 20171023201329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventurers", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.integer "current_exp", default: 0
    t.boolean "is_alive", default: true
    t.integer "rock_count", default: 0
    t.integer "paper_count", default: 0
    t.integer "scissor_count", default: 0
    t.integer "kills", default: 0
    t.bigint "state_id"
    t.integer "health_stat_points", default: 0
    t.integer "attack_stat_points", default: 0
    t.index ["level_id"], name: "index_adventurers_on_level_id"
    t.index ["state_id"], name: "index_adventurers_on_state_id"
    t.index ["user_id"], name: "index_adventurers_on_user_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.bigint "level_id"
    t.decimal "rock_chance"
    t.decimal "paper_chance"
    t.decimal "scissor_chance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "learning_curve"
    t.index ["level_id"], name: "index_enemies_on_level_id"
  end

  create_table "enemy_modifiers", force: :cascade do |t|
    t.string "text", null: false
    t.boolean "is_prefix"
    t.decimal "rock_chance"
    t.decimal "learning_curve"
    t.decimal "attack_mult"
    t.decimal "health_mult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "paper_chance"
    t.decimal "scissor_chance"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "number", null: false
    t.integer "exp_needed"
    t.integer "attack"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.bigint "adventurer_id"
    t.integer "a_health", default: 0
    t.integer "a_attack", default: 0
    t.boolean "in_fight", default: false
    t.string "e_name"
    t.integer "e_level", default: 0
    t.integer "e_exp", default: 0
    t.integer "e_attack", default: 0
    t.integer "e_health", default: 0
    t.decimal "e_rock_chance", default: "0.0"
    t.decimal "e_paper_chance", default: "0.0"
    t.decimal "e_scissor_chance", default: "0.0"
    t.decimal "e_learning_curve", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adventurer_id"], name: "index_states_on_adventurer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "adventurers", "levels"
  add_foreign_key "adventurers", "states"
  add_foreign_key "adventurers", "users"
  add_foreign_key "enemies", "levels"
  add_foreign_key "states", "adventurers"
end
