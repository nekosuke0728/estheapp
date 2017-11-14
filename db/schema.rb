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

ActiveRecord::Schema.define(version: 20171113173007) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_products", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "product_id"
    t.integer "quantity"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_products_on_cart_id"
    t.index ["product_id"], name: "index_cart_products_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "esthe_menus", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "time_frame", null: false
    t.text "description", default: "", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_types", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_item_types_on_category_id"
  end

  create_table "news", force: :cascade do |t|
    t.integer "news_type_id"
    t.text "content"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["news_type_id"], name: "index_news_on_news_type_id"
  end

  create_table "news_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderproducts", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "quantity"
    t.integer "sub_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orderproducts_on_order_id"
    t.index ["product_id"], name: "index_orderproducts_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_price"
    t.integer "payment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_orders_on_payment_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "brand_id"
    t.integer "category_id"
    t.integer "price"
    t.text "description"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "staff_id"
    t.integer "esthe_menu_id", null: false
    t.datetime "start_at", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.boolean "owner", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["name"], name: "index_staffs_on_name", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "product_id"
    t.date "date"
    t.integer "quantity"
    t.boolean "in_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
  end

  create_table "user_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.string "phone"
    t.date "birthday"
    t.string "zipcode"
    t.integer "prefecture_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "membership_number"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["membership_number"], name: "index_users_on_membership_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
