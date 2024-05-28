# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_28_012849) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.text "message"
    t.bigint "spot_date_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_date_id"], name: "index_alerts_on_spot_date_id"
    t.index ["user_id"], name: "index_alerts_on_user_id"
  end

  create_table "help_requests", force: :cascade do |t|
    t.bigint "asker_id", null: false
    t.bigint "helper_id"
    t.bigint "spot_date_id", null: false
    t.string "asker_comment"
    t.string "helper_comment"
    t.string "request_status", default: "Pending", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asker_id"], name: "index_help_requests_on_asker_id"
    t.index ["helper_id"], name: "index_help_requests_on_helper_id"
    t.index ["spot_date_id"], name: "index_help_requests_on_spot_date_id"
  end

  create_table "spot_dates", force: :cascade do |t|
    t.date "date"
    t.string "collection_type"
    t.bigint "spot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "scheduled_time"
    t.index ["spot_id"], name: "index_spot_dates_on_spot_id"
  end

  create_table "spot_visits", force: :cascade do |t|
    t.time "time"
    t.bigint "spot_date_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_date_id"], name: "index_spot_visits_on_spot_date_id"
    t.index ["user_id"], name: "index_spot_visits_on_user_id"
  end

  create_table "spots", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "label"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "line_id"
    t.string "address"
    t.bigint "spot_id"
    t.float "longitude"
    t.float "latitude"
    t.time "evening_alert_at"
    t.time "morning_alert_at"
    t.boolean "evening_alert"
    t.boolean "morning_alert"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["spot_id"], name: "index_users_on_spot_id"
  end

  add_foreign_key "alerts", "spot_dates"
  add_foreign_key "alerts", "users"
  add_foreign_key "help_requests", "spot_dates"
  add_foreign_key "help_requests", "users", column: "asker_id"
  add_foreign_key "help_requests", "users", column: "helper_id"
  add_foreign_key "spot_dates", "spots"
  add_foreign_key "spot_visits", "spot_dates"
  add_foreign_key "spot_visits", "users"
  add_foreign_key "users", "spots"
end
