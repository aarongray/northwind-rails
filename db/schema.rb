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

ActiveRecord::Schema.define(version: 20131229192053) do

  create_table "categories", force: true do |t|
    t.string   "category_name"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "company_name"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "title"
    t.string   "title_of_courtesy"
    t.date     "birth_date"
    t.date     "hire_date"
    t.string   "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "home_phone"
    t.string   "extension"
    t.string   "photo"
    t.text     "notes"
    t.integer  "reports_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
