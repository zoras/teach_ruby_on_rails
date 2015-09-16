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

ActiveRecord::Schema.define(version: 20150914023635) do

  create_table "book_infos", force: :cascade do |t|
    t.text     "toc",        limit: 65535
    t.string   "isbn",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "book_id",    limit: 4
  end

  add_index "book_infos", ["book_id"], name: "index_book_infos_on_book_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title",        limit: 255
    t.float    "price",        limit: 24
    t.integer  "subject_id",   limit: 4
    t.integer  "book_info_id", limit: 4
  end

  add_index "books", ["book_info_id"], name: "index_books_on_book_info_id", using: :btree
  add_index "books", ["subject_id"], name: "index_books_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_infos", "books"
  add_foreign_key "books", "book_infos"
  add_foreign_key "books", "subjects"
end
