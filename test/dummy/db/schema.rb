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

ActiveRecord::Schema.define(version: 20141020102930) do

  create_table "dummy_pages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seo_tags", force: true do |t|
    t.integer  "seo_taggable_id",   null: false
    t.string   "seo_taggable_type", null: false
    t.string   "seo_title"
    t.string   "seo_meta_keywords"
    t.string   "seo_robot"
    t.string   "seo_canonical"
    t.string   "og_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seo_tags", ["seo_taggable_type", "seo_taggable_id"], name: "seo_tags_taggable", using: :btree

end
