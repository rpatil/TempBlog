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

ActiveRecord::Schema.define(:version => 20141118131017) do

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "primary_categories", :force => true do |t|
    t.string   "name"
    t.string   "display_name"
    t.boolean  "status",       :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "series", :force => true do |t|
    t.string   "name",                                          :null => false
    t.text     "short_description"
    t.string   "tag",                                           :null => false
    t.boolean  "status",                      :default => true
    t.string   "series_picture_file_name"
    t.string   "series_picture_content_type"
    t.integer  "series_picture_file_size"
    t.datetime "series_picture_updated_at"
    t.integer  "vote_up",                     :default => 0,    :null => false
    t.integer  "total_view",                  :default => 0,    :null => false
    t.string   "slug"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tutorial_modes", :force => true do |t|
    t.string   "name"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tutorial_states", :force => true do |t|
    t.string   "name"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tutorial_times", :force => true do |t|
    t.string   "name"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tutorial_types", :force => true do |t|
    t.string   "name"
    t.boolean  "status",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tutorials", :force => true do |t|
    t.string   "title",                                        :null => false
    t.integer  "user_id",                                      :null => false
    t.string   "mode",                                         :null => false
    t.string   "time",                                         :null => false
    t.string   "primary_category",                             :null => false
    t.string   "categories"
    t.string   "state",                                        :null => false
    t.datetime "publish_date"
    t.string   "tutorial_type",                                :null => false
    t.text     "content_introduction",                         :null => false
    t.text     "content_main"
    t.text     "conclusion"
    t.string   "github_link"
    t.string   "demo_link"
    t.string   "related_link"
    t.string   "attachment_link"
    t.string   "video_url"
    t.integer  "vote_up",                       :default => 0, :null => false
    t.integer  "total_view",                    :default => 0, :null => false
    t.string   "slug",                                         :null => false
    t.integer  "series_id",                     :default => 0, :null => false
    t.integer  "tutorial_order",                :default => 0, :null => false
    t.text     "content_short_introduction",                   :null => false
    t.datetime "updated_by_writer",                            :null => false
    t.integer  "reviewed_by"
    t.datetime "reviewed_date"
    t.text     "review_comment"
    t.string   "tutorial_picture_file_name"
    t.string   "tutorial_picture_content_type"
    t.integer  "tutorial_picture_file_size"
    t.datetime "tutorial_picture_updated_at"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "tutorials", ["slug"], :name => "index_tutorials_on_slug"

  create_table "users", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "email",                                  :null => false
    t.text     "introduction",                           :null => false
    t.string   "current_position"
    t.string   "company"
    t.string   "website"
    t.string   "skype_id"
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
    t.text     "short_introduction"
  end

end
