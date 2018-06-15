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

ActiveRecord::Schema.define(version: 2018_06_08_020853) do

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "maiden_name"
    t.datetime "birth_date"
    t.datetime "death_date"
    t.string "gender"
    t.string "contact_numbers"
    t.string "whatsapp_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "relation_id"
    t.integer "related_person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_relationships_on_person_id"
    t.index ["related_person_id"], name: "index_relationships_on_related_person_id"
    t.index ["relation_id"], name: "index_relationships_on_relation_id"
  end

end
