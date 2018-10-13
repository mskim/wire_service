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

ActiveRecord::Schema.define(version: 2018_10_13_051635) do

  create_table "yh_articles", force: :cascade do |t|
    t.string "action"
    t.string "service_type"
    t.string "content_id"
    t.date "date"
    t.time "time"
    t.string "urgency"
    t.string "category"
    t.string "class_code"
    t.string "attriubute_code"
    t.string "source"
    t.string "credit"
    t.string "region"
    t.string "title"
    t.text "body"
    t.string "writer"
    t.string "taken_by"
    t.boolean "selected"
    t.string "group"
    t.string "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yh_pictures", force: :cascade do |t|
    t.string "action"
    t.string "service_type"
    t.string "content_id"
    t.date "date"
    t.time "time"
    t.string "urgency"
    t.string "category"
    t.string "class_code"
    t.string "attriubute_code"
    t.string "source"
    t.string "credit"
    t.string "region"
    t.string "title"
    t.string "subtile"
    t.string "body"
    t.string "picture"
    t.string "taken_by"
    t.boolean "selected"
    t.string "group"
    t.string "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end