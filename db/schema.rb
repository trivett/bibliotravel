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

ActiveRecord::Schema.define(:version => 20130606014518) do

  create_table "accounts", :force => true do |t|
    t.integer  "user_id"
    t.string   "uid"
    t.string   "username"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.datetime "oauth_expires"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "provider"
  end

  add_index "accounts", ["user_id"], :name => "index_accounts_on_user_id"

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
    t.integer  "isbn",       :limit => 8
    t.text     "blurb"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rankings", :force => true do |t|
    t.string   "source"
    t.integer  "ranking"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rankings", ["book_id"], :name => "index_rankings_on_book_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "picture_url"
  end

end
