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

ActiveRecord::Schema.define(version: 20180412073237) do

  create_table "battles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "level"
    t.integer "attack"
    t.integer "defence"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "xp_given"
    t.integer "gold_given"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "user_name"
    t.integer "user_level"
    t.integer "attack"
    t.integer "health"
    t.integer "defence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gold"
    t.integer "xp"
    t.integer "sword"
    t.integer "spellbook"
    t.integer "helmet"
    t.integer "shoulders"
    t.integer "gloves"
    t.integer "chest"
    t.integer "legs"
    t.integer "boots"
    t.float "evasion"
    t.float "accuracy"
    t.string "quest_name"
    t.integer "quest_num"
    t.boolean "quest_complete"
    t.integer "loss_counter"
    t.integer "win_counter"
    t.integer "quest_counter"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
