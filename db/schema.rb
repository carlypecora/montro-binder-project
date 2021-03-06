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

ActiveRecord::Schema.define(version: 2019_08_30_182839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_guards", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "guard_id"
    t.index ["company_id"], name: "index_companies_guards_on_company_id"
    t.index ["guard_id"], name: "index_companies_guards_on_guard_id"
  end

  create_table "fireguard", force: :cascade do |t|
    t.string "name"
    t.bigint "guard_id"
    t.index ["guard_id"], name: "index_fireguard_on_guard_id"
  end

  create_table "guards", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
