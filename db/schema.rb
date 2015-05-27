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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150525140640) do
=======
ActiveRecord::Schema.define(version: 20150525185109) do
>>>>>>> fa43edd2cbbaa62f4f9671dd91d5d61947944b34

  create_table "joins", force: :cascade do |t|
    t.text     "name"
    t.text     "userid"
    t.text     "birth"
    t.text     "pwd"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.integer  "num"
    t.text     "subject"
    t.text     "text"
    t.string   "name"
    t.text     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "num"
    t.text     "product"
    t.text     "subject"
    t.text     "text"
    t.string   "name"
    t.text     "date"
    t.text     "star"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "userid"
    t.text     "birth"
    t.text     "userpwd"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
