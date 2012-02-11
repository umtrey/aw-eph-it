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

ActiveRecord::Schema.define(:version => 20120211193700) do

  create_table "gameingredients", :force => true do |t|
    t.integer  "game_id"
    t.integer  "ingredient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gamelocations", :force => true do |t|
    t.integer  "game_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.string   "shortdescription"
    t.text     "fulldescription"
    t.integer  "players"
    t.integer  "source_id"
    t.integer  "complexity"
    t.integer  "rowdiness"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", :force => true do |t|
    t.integer  "ingredient_id"
    t.text     "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
