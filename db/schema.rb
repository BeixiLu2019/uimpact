# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_13_152226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_transactions", force: :cascade do |t|
    t.string "in_out_indicator"
    t.float "cash_amount"
    t.date "transaction_date"
    t.string "transaction_reference"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_account_transactions_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "account_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "buy_sell_indicator"
    t.float "investment_amount"
    t.date "trade_date"
    t.date "settlement_date"
    t.string "trade_status"
    t.bigint "client_id", null: false
    t.bigint "fund_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_deals_on_client_id"
    t.index ["fund_id"], name: "index_deals_on_fund_id"
  end

  create_table "fund_constituent_mappings", force: :cascade do |t|
    t.bigint "fund_id", null: false
    t.bigint "fund_constituent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_constituent_id"], name: "index_fund_constituent_mappings_on_fund_constituent_id"
    t.index ["fund_id"], name: "index_fund_constituent_mappings_on_fund_id"
  end

  create_table "fund_constituents", force: :cascade do |t|
    t.string "fund_constituent_name"
    t.string "asset_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funds", force: :cascade do |t|
    t.string "fund_ticker"
    t.string "fund_name"
    t.text "fund_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "market_data", force: :cascade do |t|
    t.date "cob_date"
    t.float "market_price"
    t.bigint "fund_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fund_id"], name: "index_market_data_on_fund_id"
  end

  add_foreign_key "account_transactions", "clients"
  add_foreign_key "deals", "clients"
  add_foreign_key "deals", "funds"
  add_foreign_key "fund_constituent_mappings", "fund_constituents"
  add_foreign_key "fund_constituent_mappings", "funds"
  add_foreign_key "market_data", "funds"
end
