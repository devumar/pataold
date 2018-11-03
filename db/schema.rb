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

ActiveRecord::Schema.define(version: 20181103143552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "accountname"
    t.string   "type"
    t.decimal  "defaultamount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "arrears", force: :cascade do |t|
    t.string   "tenant_id"
    t.string   "integer"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assigns", force: :cascade do |t|
    t.integer  "tenant_id"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assigns", ["tenant_id", "house_id"], name: "index_assigns_on_tenant_id_and_house_id", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charges", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "month"
    t.integer  "account"
    t.integer  "property_id"
    t.string   "mode"
    t.integer  "tenant_id"
    t.string   "receipt"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "disburses", force: :cascade do |t|
    t.integer  "property_id"
    t.integer  "month"
    t.date     "year"
    t.decimal  "amount"
    t.string   "paid_by"
    t.string   "mode"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string   "names"
    t.string   "plot_no"
    t.string   "unit_no"
    t.decimal  "amount"
    t.string   "receipt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "unit_name"
    t.string   "rent_payable"
    t.string   "unit_type"
    t.integer  "property_id"
  end

  add_index "houses", ["property_id"], name: "index_houses_on_property_id", using: :btree

  create_table "landlords", force: :cascade do |t|
    t.string   "fname"
    t.string   "oname"
    t.string   "postal_address"
    t.string   "town"
    t.integer  "national_id"
    t.integer  "phone"
    t.string   "email"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "months", force: :cascade do |t|
    t.integer  "tenant_id"
    t.decimal  "amount"
    t.integer  "month"
    t.integer  "year"
    t.integer  "field_officer"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "penalties", force: :cascade do |t|
    t.integer  "tenant_id"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "available_at"
    t.string   "tags"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "estate"
    t.string   "plot_no"
    t.integer  "units_on_plot"
    t.integer  "field_officer"
    t.integer  "landlord_id"
    t.string   "plot_name"
    t.string   "town"
    t.integer  "commission"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.integer  "month"
    t.string   "unit_name"
    t.integer  "property_id"
    t.string   "receipt_no"
    t.string   "mode"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tenantcharges", force: :cascade do |t|
    t.decimal  "amount"
    t.string   "bank_acc"
    t.string   "bank"
    t.string   "cheque"
    t.integer  "account"
    t.string   "property_id"
    t.string   "mode"
    t.integer  "tenant_id"
    t.string   "receipt_no"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "town"
    t.integer  "phone"
    t.integer  "national_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "status"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "month"
    t.decimal  "amount"
    t.integer  "tenant_id"
    t.datetime "date"
    t.string   "received_by"
    t.string   "property_id"
    t.string   "receipt_no"
    t.string   "mode"
    t.integer  "disbursed"
    t.date     "year"
    t.integer  "d_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "unittypes", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
