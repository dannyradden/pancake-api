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

ActiveRecord::Schema.define(version: 20170714210704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "columns_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["columns_id"], name: "index_cards_on_columns_id", using: :btree
  end

  create_table "cards_tags", force: :cascade do |t|
    t.integer  "cards_id"
    t.integer  "tags_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cards_id"], name: "index_cards_tags_on_cards_id", using: :btree
    t.index ["tags_id"], name: "index_cards_tags_on_tags_id", using: :btree
  end

  create_table "columns", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "projects_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["projects_id"], name: "index_columns_on_projects_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "users_id"
    t.integer  "cards_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cards_id"], name: "index_comments_on_cards_id", using: :btree
    t.index ["users_id"], name: "index_comments_on_users_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.integer  "role",            default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users_projects", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "projects_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["projects_id"], name: "index_users_projects_on_projects_id", using: :btree
    t.index ["users_id"], name: "index_users_projects_on_users_id", using: :btree
  end

  add_foreign_key "cards", "columns", column: "columns_id"
  add_foreign_key "cards_tags", "cards", column: "cards_id"
  add_foreign_key "cards_tags", "tags", column: "tags_id"
  add_foreign_key "columns", "projects", column: "projects_id"
  add_foreign_key "comments", "cards", column: "cards_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "users_projects", "projects", column: "projects_id"
  add_foreign_key "users_projects", "users", column: "users_id"
end
