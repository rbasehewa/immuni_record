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

ActiveRecord::Schema[8.1].define(version: 2025_10_29_000707) do
  create_table "immunisations", force: :cascade do |t|
    t.string "administered_by"
    t.date "administered_on"
    t.string "batch_number"
    t.datetime "created_at", null: false
    t.date "next_due_date"
    t.integer "patient_id", null: false
    t.datetime "updated_at", null: false
    t.integer "vaccine_id", null: false
    t.index ["patient_id"], name: "index_immunisations_on_patient_id"
    t.index ["vaccine_id"], name: "index_immunisations_on_vaccine_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date_of_birth"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "medicare_number"
    t.datetime "updated_at", null: false
  end

  create_table "vaccines", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "dose_number"
    t.string "manufacturer"
    t.string "name"
    t.integer "schedule_interval"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "immunisations", "patients"
  add_foreign_key "immunisations", "vaccines"
end
