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

ActiveRecord::Schema.define(version: 2018_09_05_052721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "Name"
    t.string "Remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
  end

  create_table "designations", force: :cascade do |t|
    t.string "post"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["department_id"], name: "index_designations_on_department_id"
  end

  create_table "emp_academics", force: :cascade do |t|
    t.string "Degree"
    t.string "College_School_Name"
    t.string "University_Name"
    t.string "Year_Of_Passing"
    t.string "Result"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emp_master_id"], name: "index_emp_academics_on_emp_master_id"
  end

  create_table "emp_addresses", force: :cascade do |t|
    t.string "Address"
    t.string "Distict"
    t.string "State"
    t.string "Nation"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["emp_master_id"], name: "index_emp_addresses_on_emp_master_id"
  end

  create_table "emp_masters", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Username"
    t.string "Email"
    t.decimal "Mobile_No"
    t.string "Nationality"
    t.string "Marital_Status"
    t.bigint "login_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["login_master_id"], name: "index_emp_masters_on_login_master_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.date "Start_Date"
    t.date "End_Date"
    t.string "Reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "login_master_id"
    t.bigint "emp_master_id"
    t.integer "status", default: 0
    t.index ["emp_master_id"], name: "index_leaves_on_emp_master_id"
    t.index ["login_master_id"], name: "index_leaves_on_login_master_id"
  end

  create_table "login_masters", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
  end

  create_table "salaries", force: :cascade do |t|
    t.date "Date_Of_Salary"
    t.decimal "Amount"
    t.bigint "emp_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["emp_master_id"], name: "index_salaries_on_emp_master_id"
  end

  add_foreign_key "designations", "departments"
  add_foreign_key "emp_academics", "emp_masters"
  add_foreign_key "emp_addresses", "emp_masters"
  add_foreign_key "emp_masters", "login_masters"
  add_foreign_key "leaves", "emp_masters"
  add_foreign_key "leaves", "login_masters"
  add_foreign_key "salaries", "emp_masters"
end
