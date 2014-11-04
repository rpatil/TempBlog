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

ActiveRecord::Schema.define(:version => 20141103133054) do

  create_table "tutorials", :force => true do |t|
    t.string   "title",                               :null => false
    t.integer  "user_id",                             :null => false
    t.string   "mode",                                :null => false
    t.string   "time",                                :null => false
    t.string   "primary_category",                    :null => false
    t.string   "categories"
    t.string   "state",                               :null => false
    t.datetime "publish_date"
    t.string   "tutorial_type",                       :null => false
    t.text     "content_introduction",                :null => false
    t.text     "content_main"
    t.text     "conclusion"
    t.string   "github_link"
    t.string   "demo_link"
    t.string   "related_link"
    t.string   "attachment_name"
    t.string   "attachment_link"
    t.string   "video_url"
    t.integer  "vote_up",              :default => 0, :null => false
    t.integer  "total_view",           :default => 0, :null => false
    t.string   "slug",                                :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "email",                                  :null => false
    t.text     "introduction",                           :null => false
    t.string   "website"
    t.string   "follow_twitter"
    t.string   "follow_linkedin"
    t.string   "follow_facebook"
    t.string   "follow_stackoverflow"
    t.string   "follow_github"
    t.boolean  "status",               :default => true
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",          :default => 0,    :null => false
    t.integer  "failed_login_count",   :default => 0,    :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

end
