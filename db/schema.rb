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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150309050040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "tags"
    t.string   "status"
    t.string   "category"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "language",     default: "ru", null: false
    t.text     "rss"
    t.integer  "order"
    t.string   "image"
    t.text     "attachments"
    t.datetime "published_at"
  end

  create_table "blog_tags", force: true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "language",   default: "ru", null: false
  end

  create_table "comments", force: true do |t|
    t.text     "text"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "entity_id"
  end

  create_table "images", force: true do |t|
    t.string   "tags"
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "access_token"
    t.string   "uid"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.string   "url"
    t.string   "image"
    t.string   "role"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "video_lesson_tags", force: true do |t|
    t.string   "value"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_lessons", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.string   "tags"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "language",    default: "ru", null: false
    t.string   "status"
  end

  create_table "video_parts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "body"
    t.text     "tags"
    t.string   "status"
    t.string   "slug"
    t.string   "language"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "video_lesson_id"
    t.string   "image"
  end

end
