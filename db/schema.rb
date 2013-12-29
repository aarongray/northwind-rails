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

ActiveRecord::Schema.define(version: 20131229205446) do

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

  create_table "order_details", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.float    "unit_price"
    t.integer  "quantity"
    t.float    "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.date     "order_date"
    t.date     "required_date"
    t.date     "shipped_date"
    t.integer  "ship_via"
    t.float    "freight"
    t.string   "ship_name"
    t.string   "ship_address"
    t.string   "ship_city"
    t.string   "ship_region"
    t.string   "ship_postal_code"
    t.string   "ship_country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.integer  "supplier_id"
    t.integer  "category_id"
    t.string   "quantity_per_unit"
    t.float    "unit_price"
    t.integer  "units_in_stock"
    t.integer  "units_on_order"
    t.integer  "reorder_level"
    t.boolean  "discontinued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shippers", force: true do |t|
    t.string   "company_name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", force: true do |t|
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
    t.text     "home_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
