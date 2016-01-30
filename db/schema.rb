# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160130145617) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "workout_category_id"
  end

  create_table "disabilities", force: :cascade do |t|
    t.string   "name"
    t.integer  "disability_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "equipment"
    t.string   "difficulty"
    t.integer  "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_categories", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "workout_id"
    t.string   "name"
    t.integer  "category_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "workout_categories_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "focus_area_id"
    t.integer  "workout_category_id"
  end

  add_index "workouts", ["workout_categories_id"], name: "index_workouts_on_workout_categories_id"

end
