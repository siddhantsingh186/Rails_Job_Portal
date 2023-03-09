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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_124146) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "applicants", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "phone", null: false
    t.text "work_experience", null: false
    t.text "education", null: false
    t.string "resume_link", null: false
    t.string "address_line_1", null: false
    t.string "address_line_2"
    t.string "city", null: false
    t.index ["email"], name: "index_applicants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_applicants_on_reset_password_token", unique: true
  end

  create_table "applications", force: :cascade do |t|
    t.bigint "job_opening_id", null: false
    t.bigint "applicant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_applications_on_applicant_id"
    t.index ["job_opening_id"], name: "index_applications_on_job_opening_id"
  end

  create_table "job_openings", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "company_name", null: false
    t.integer "salary", null: false
    t.string "location", null: false
    t.string "education_requirements"
    t.integer "experience_years", null: false
    t.string "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "applicants"
  add_foreign_key "applications", "job_openings"
end
