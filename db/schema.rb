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

ActiveRecord::Schema.define(:version => 20131007012529) do

  create_table "course_registrations", :force => true do |t|
    t.integer  "course_id"
    t.integer  "registration_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "icon"
    t.boolean  "publish"
    t.text     "intro"
    t.text     "description"
    t.text     "designed_for"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "slug"
    t.integer  "priority"
  end

  add_index "courses", ["slug"], :name => "index_courses_on_slug", :unique => true

  create_table "enquiries", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "enquiry_type"
    t.text     "message"
    t.boolean  "responded"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "enrolments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "referral"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "intro"
    t.text     "description"
    t.string   "location"
    t.string   "address"
    t.string   "suburb"
    t.string   "postcode"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.decimal  "cost",        :precision => 7, :scale => 2
    t.string   "rsvp"
    t.string   "icon"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "publish"
    t.integer  "month"
    t.integer  "year"
    t.string   "slug"
  end

  add_index "events", ["slug"], :name => "index_events_on_slug", :unique => true

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", :unique => true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "intake_enrolments", :force => true do |t|
    t.integer  "intake_id"
    t.integer  "enrolment_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "intakes", :force => true do |t|
    t.integer  "course_id"
    t.date     "start_date"
    t.time     "start_time"
    t.time     "finish_time"
    t.integer  "duration"
    t.string   "duration_type"
    t.boolean  "scheduled"
    t.boolean  "confirmed"
    t.string   "location"
    t.decimal  "cost",          :precision => 7, :scale => 2
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "class_days"
    t.string   "title"
    t.text     "notes"
  end

  create_table "messages", :force => true do |t|
    t.string   "icon"
    t.string   "title"
    t.text     "content"
    t.boolean  "active"
    t.integer  "priority"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registrations", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.boolean  "opt_in"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
