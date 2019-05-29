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

ActiveRecord::Schema.define(version: 2019_05_29_105541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.bigint "match_id", null: false
    t.decimal "amount", precision: 9, scale: 2, null: false
    t.decimal "winning_amount", precision: 9, scale: 2
    t.boolean "is_winner"
    t.bigint "created_by_id", null: false
    t.bigint "updated_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_id"], name: "index_bids_on_created_by_id"
    t.index ["is_winner"], name: "index_bids_on_is_winner"
    t.index ["updated_by_id"], name: "index_bids_on_updated_by_id"
    t.index ["winning_amount"], name: "index_bids_on_winning_amount"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name", null: false
    t.integer "team1_id", null: false
    t.integer "team2_id", null: false
    t.integer "winner_team_id"
    t.datetime "date", null: false
    t.datetime "deleted_at"
    t.string "venue"
    t.bigint "created_by_id", null: false
    t.bigint "updated_by_id", null: false
    t.index ["created_by_id"], name: "index_matches_on_created_by_id"
    t.index ["date"], name: "index_matches_on_date"
    t.index ["name"], name: "index_matches_on_name"
    t.index ["team1_id", "team2_id", "date"], name: "index_matches_on_t1_id_on_t2_id_and_date", unique: true
    t.index ["updated_by_id"], name: "index_matches_on_updated_by_id"
    t.index ["winner_team_id"], name: "index_matches_on_winner_team_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_name", null: false
    t.string "captain"
    t.datetime "deleted_at"
    t.bigint "created_by_id", null: false
    t.bigint "updated_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["captain"], name: "index_teams_on_captain"
    t.index ["created_by_id"], name: "index_teams_on_created_by_id"
    t.index ["name"], name: "index_teams_on_name"
    t.index ["short_name"], name: "index_teams_on_short_name"
    t.index ["updated_by_id"], name: "index_teams_on_updated_by_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "mobile"
    t.datetime "deleted_at"
    t.bigint "created_by_id", null: false
    t.bigint "updated_by_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "confirm_success_url"
    t.string "unconfirmed_email"
    t.string "provider"
    t.string "uid", default: "", null: false
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["created_by_id"], name: "index_users_on_created_by_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid", unique: true
    t.index ["updated_by_id"], name: "index_users_on_updated_by_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

end
