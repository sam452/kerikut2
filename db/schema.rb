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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120227203127) do

  create_table "commodities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "wholesale_unit"
    t.string   "retail_unit"
    t.string   "farm_gate_unit"
    t.string   "delivered_unit"
    t.string   "receipt_unit"
  end

  create_table "prices", :force => true do |t|
    t.date     "date"
    t.string   "price_type"
    t.string   "quality"
    t.string   "farm_gate_unit"
    t.decimal  "farm_gate_high"
    t.decimal  "farm_gate_low"
    t.string   "delivered_unit"
    t.decimal  "delivered_high"
    t.decimal  "delivered_low"
    t.string   "wholesale_unit"
    t.decimal  "wholesale_high"
    t.decimal  "wholesale_low"
    t.string   "retail_unit"
    t.decimal  "retail_high"
    t.decimal  "retail_low"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commodity_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "volumes", :force => true do |t|
    t.string   "volume_quality"
    t.string   "volume_type"
    t.string   "region"
    t.string   "district"
    t.string   "ward"
    t.string   "town"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commodity_id"
  end

end
