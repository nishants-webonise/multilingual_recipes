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

ActiveRecord::Schema.define(:version => 20140731093809) do

  create_table "recipe_translations", :force => true do |t|
    t.integer  "recipe_id"
    t.string   "locale",             :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "title"
    t.text     "description"
    t.text     "ingredients"
    t.text     "preparation_method"
  end

  add_index "recipe_translations", ["locale"], :name => "index_recipe_translations_on_locale"
  add_index "recipe_translations", ["recipe_id"], :name => "index_recipe_translations_on_recipe_id"

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "ingredients"
    t.text     "preparation_method"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tolk_locales", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tolk_locales", ["name"], :name => "index_tolk_locales_on_name", :unique => true

  create_table "tolk_phrases", :force => true do |t|
    t.text     "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tolk_translations", :force => true do |t|
    t.integer  "phrase_id"
    t.integer  "locale_id"
    t.text     "text"
    t.text     "previous_text"
    t.boolean  "primary_updated", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tolk_translations", ["phrase_id", "locale_id"], :name => "index_tolk_translations_on_phrase_id_and_locale_id", :unique => true

end
