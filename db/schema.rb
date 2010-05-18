# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100518182113) do

  create_table "bills", :force => true do |t|
    t.string   "name"
    t.float    "amount"
    t.date     "due_on"
    t.date     "paid_on"
    t.integer  "payee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "email"
    t.string   "phone"
    t.boolean  "active"
    t.string   "password_salt"
    t.string   "crypted_password"
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
  end

  create_table "months", :force => true do |t|
    t.string  "name"
    t.integer "year"
    t.integer "number"
  end

  create_table "payees", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.float    "amount"
    t.integer  "room_id"
    t.integer  "renter_id"
    t.datetime "paid_on"
    t.datetime "deposited_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "month_id"
  end

  create_table "renters", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "room_id"
    t.integer  "pay_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.integer  "unit_id"
    t.integer  "rent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.integer  "rent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
