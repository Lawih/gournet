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

ActiveRecord::Schema.define(version: 20160925083506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "allergies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chefs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "type"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chefs_on_user_id", using: :btree
  end

  create_table "delivery_people", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "document"
    t.string   "phone"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dish_evaluations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.integer  "score_time"
    t.integer  "score_quality"
    t.integer  "score_visual"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["dish_id"], name: "index_dish_evaluations_on_dish_id", using: :btree
    t.index ["user_id"], name: "index_dish_evaluations_on_user_id", using: :btree
  end

  create_table "dish_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "dish_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["dish_id"], name: "index_dish_ingredients_on_dish_id", using: :btree
    t.index ["ingredient_id"], name: "index_dish_ingredients_on_ingredient_id", using: :btree
  end

  create_table "dishes", force: :cascade do |t|
    t.integer  "chef_id"
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.float    "score"
    t.float    "price"
    t.integer  "calories"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chef_id"], name: "index_dishes_on_chef_id", using: :btree
  end

  create_table "favorite_dishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_favorite_dishes_on_dish_id", using: :btree
    t.index ["user_id"], name: "index_favorite_dishes_on_user_id", using: :btree
  end

  create_table "followings", force: :cascade do |t|
    t.integer  "chef_id"
    t.integer  "user_id"
    t.boolean  "is_favorite"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["chef_id"], name: "index_followings_on_chef_id", using: :btree
    t.index ["user_id"], name: "index_followings_on_user_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "dish_id"
    t.integer  "amount"
    t.datetime "delivery_date"
    t.datetime "max_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["dish_id"], name: "index_offers_on_dish_id", using: :btree
  end

  create_table "order_allergies", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "allergie_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["allergie_id"], name: "index_order_allergies_on_allergie_id", using: :btree
    t.index ["order_id"], name: "index_order_allergies_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dish_id"
    t.integer  "delivery_person_id"
    t.integer  "amount"
    t.datetime "date"
    t.text     "comment"
    t.integer  "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["delivery_person_id"], name: "index_orders_on_delivery_person_id", using: :btree
    t.index ["dish_id"], name: "index_orders_on_dish_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "tag_dishes", force: :cascade do |t|
    t.integer  "dish_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_tag_dishes_on_dish_id", using: :btree
    t.index ["tag_id"], name: "index_tag_dishes_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_allergies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "allergie_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["allergie_id"], name: "index_user_allergies_on_allergie_id", using: :btree
    t.index ["user_id"], name: "index_user_allergies_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
    t.date     "birthday"
    t.string   "phone"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "chefs", "users"
  add_foreign_key "dish_evaluations", "dishes"
  add_foreign_key "dish_evaluations", "users"
  add_foreign_key "dish_ingredients", "dishes"
  add_foreign_key "dish_ingredients", "ingredients"
  add_foreign_key "dishes", "chefs"
  add_foreign_key "favorite_dishes", "dishes"
  add_foreign_key "favorite_dishes", "users"
  add_foreign_key "followings", "chefs"
  add_foreign_key "followings", "users"
  add_foreign_key "offers", "dishes"
  add_foreign_key "order_allergies", "allergies", column: "allergie_id"
  add_foreign_key "order_allergies", "orders"
  add_foreign_key "orders", "delivery_people"
  add_foreign_key "orders", "dishes"
  add_foreign_key "orders", "users"
  add_foreign_key "tag_dishes", "dishes"
  add_foreign_key "tag_dishes", "tags"
  add_foreign_key "user_allergies", "allergies", column: "allergie_id"
  add_foreign_key "user_allergies", "users"
end
