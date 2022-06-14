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

ActiveRecord::Schema[7.0].define(version: 2022_06_14_095944) do
  create_table "cardfishes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.text "maintenance"
    t.text "behavior"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cardfishes_diseases", force: :cascade do |t|
    t.integer "cardfish_id"
    t.integer "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "causes"
    t.text "consequences"
    t.text "treatment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases_products", force: :cascade do |t|
    t.integer "disease_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "affiliation_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "reminder_type"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "repetition_recurrence"
    t.string "repetition_unit"
    t.index ["user_id"], name: "index_reminders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.text "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reminders", "users"
end
