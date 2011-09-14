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

ActiveRecord::Schema.define(:version => 20110907052956) do

  create_table "contacts", :force => true do |t|
    t.string   "firstname",  :limit => 40
    t.string   "lastname",   :limit => 40
    t.string   "gender",     :limit => 1
    t.string   "email",      :limit => 200
    t.date     "birthdate"
    t.string   "mobile",     :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "city",       :limit => 30
    t.integer  "user_id"
    t.string   "address",    :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "revenue"
  end

  create_table "opportunities", :force => true do |t|
    t.string   "name",                 :limit => 60
    t.date     "closing_date_planned"
    t.date     "closing_date_actual"
    t.string   "status",               :limit => 10
    t.float    "value"
    t.float    "probability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
