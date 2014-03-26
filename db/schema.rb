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

ActiveRecord::Schema.define(version: 20140304144023) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "college_streams", force: true do |t|
    t.integer  "college_id"
    t.integer  "category_id"
    t.integer  "stream_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "information"
    t.string   "year"
    t.string   "address1"
    t.string   "address2"
    t.string   "pincode"
    t.string   "landline"
    t.string   "mobile"
    t.integer  "collage_type"
    t.string   "tution_fee"
    t.string   "college_website"
    t.string   "college_email"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "linkedin_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stream_categories", force: true do |t|
    t.string   "name"
    t.integer  "category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
