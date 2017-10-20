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

ActiveRecord::Schema.define(version: 20171020135320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventurers", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.integer "current_exp"
    t.index ["level_id"], name: "index_adventurers_on_level_id"
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
    t.index ["level_id"], name: "index_enemies_on_level_id"
  end

  create_table "enemy_modifiers", force: :cascade do |t|
    t.string "text", null: false
    t.boolean "is_prefix"
    t.string "move_to_adjust"
    t.decimal "chance_adjust"
    t.decimal "learning_curve"
    t.decimal "attack_mult"
    t.decimal "health_mult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "number", null: false
    t.integer "exp_needed"
    t.integer "attack"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  add_foreign_key "adventurers", "users"
  add_foreign_key "enemies", "levels"
  add_foreign_key "examples", "users"
end
