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

ActiveRecord::Schema.define(version: 2018_11_29_221913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quantities", default: [], array: true
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "carts_items", id: false, force: :cascade do |t|
    t.bigint "cart_id", null: false
    t.bigint "item_id", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.decimal "price", precision: 12, scale: 3
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_orders", id: false, force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "item_id", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "quantities", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visitors", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
