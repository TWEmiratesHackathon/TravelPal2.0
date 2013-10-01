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

ActiveRecord::Schema.define(:version => 20130922054542) do

  create_table "coordinates", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mission_stories", :force => true do |t|
    t.integer  "mission_id"
    t.integer  "user_id"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "like_count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "missions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "task_count"
    t.integer  "count"
    t.integer  "rank"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stories", :force => true do |t|
    t.string   "location"
    t.date     "story_date"
    t.time     "story_time"
    t.text     "story_entry"
    t.string   "story_photo_url"
    t.integer  "user_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "travel_image_file_name"
    t.string   "travel_image_content_type"
    t.integer  "travel_image_file_size"
    t.datetime "travel_image_updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "task_tagships", :force => true do |t|
    t.integer  "task_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "information"
    t.integer  "score"
    t.text     "hint"
    t.integer  "count"
    t.float    "rank"
    t.integer  "answer"
    t.integer  "mission_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "rank"
    t.date     "accomplish_date"
    t.integer  "weather"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "mission_story_id"
    t.string   "tx_image_file_name"
    t.string   "tx_image_content_type"
    t.integer  "tx_image_file_size"
    t.datetime "tx_image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "location"
    t.string   "gender"
    t.date     "birthday"
    t.string   "profile_img_url"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
