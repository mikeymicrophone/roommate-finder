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

ActiveRecord::Schema.define(:version => 20100517190234) do

  create_table "renters", :force => true do |t|
    t.string  "name"
    t.string  "phone"
    t.string  "email"
    t.integer "room_id"
    t.integer "pay_day"
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
