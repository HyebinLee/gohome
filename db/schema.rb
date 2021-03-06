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
ActiveRecord::Schema.define(version: 20150612154231) do
=======
ActiveRecord::Schema.define(version: 20150613185313) do
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc

  create_table "buys", force: :cascade do |t|
    t.text     "image"
    t.text     "product"
    t.text     "price"
    t.integer  "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.text     "image"
    t.text     "product"
    t.text     "price"
    t.integer  "num"
    t.text     "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counts", force: :cascade do |t|
    t.text     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joins", force: :cascade do |t|
    t.text     "name"
    t.text     "userid"
    t.text     "email"
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

  create_table "shops", force: :cascade do |t|
    t.text     "image"
    t.text     "type"
    t.text     "product"
    t.text     "price"
    t.text     "text"
    t.integer  "count"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
