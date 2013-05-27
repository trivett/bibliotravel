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

ActiveRecord::Schema.define(:version => 20130527222029) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.date     "born"
    t.date     "died"
    t.text     "blurb"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "city_id"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "city_id"
    t.integer  "author_id"
    t.string   "tags",       :limit => 20,                 :array => true
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
