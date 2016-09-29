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

ActiveRecord::Schema.define(version: 20160929060814) do

  create_table "buyers", force: :cascade do |t|
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "first_name",               limit: 255
    t.string   "middle_name",              limit: 255
    t.string   "family_name",              limit: 255
    t.date     "birthdate"
    t.integer  "age",                      limit: 4
    t.string   "citizenship",              limit: 255
    t.string   "sex",                      limit: 6
    t.string   "civil_status",             limit: 13
    t.integer  "no_of_dependents",         limit: 4
    t.string   "home_address",             limit: 255
    t.string   "home_zip_code",            limit: 255
    t.string   "home_ownership",           limit: 21
    t.integer  "years_of_stay",            limit: 4
    t.string   "home_tel_number",          limit: 255
    t.string   "prov_address",             limit: 255
    t.string   "acr_resident_card_number", limit: 255
    t.string   "prov_zip_code",            limit: 255
    t.string   "education",                limit: 13
    t.string   "cellphone_number",         limit: 255
    t.string   "email_address",            limit: 255
    t.string   "sss_hdmf_gsis_number",     limit: 255
    t.string   "tin",                      limit: 255
    t.string   "occupation",               limit: 13
    t.string   "employment_type",          limit: 5
    t.integer  "years_worked",             limit: 4
    t.integer  "years_abroad",             limit: 4
    t.date     "contract_end"
    t.string   "insurance",                limit: 255
    t.integer  "coverage_amount",          limit: 4
    t.integer  "spouse_id",                limit: 4
  end

  create_table "employment_histories", force: :cascade do |t|
    t.string   "period_covered",    limit: 255
    t.string   "position",          limit: 255
    t.string   "employment_status", limit: 255
    t.string   "employer",          limit: 255
    t.string   "nature",            limit: 255
    t.string   "office_tel_no",     limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "TCT",                 limit: 4
    t.string   "subdivision_name",    limit: 255
    t.integer  "block",               limit: 4
    t.integer  "lot",                 limit: 4
    t.integer  "lot_area",            limit: 4
    t.integer  "floor_area",          limit: 4
    t.float    "purchase_price",      limit: 24
    t.float    "monthly_installment", limit: 24
    t.integer  "interest_rate",       limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "buyer_id",            limit: 4
    t.string   "loan_type",           limit: 13
    t.boolean  "is_fully_paid",                   default: false
  end

  create_table "payments", force: :cascade do |t|
    t.date     "due_date"
    t.date     "date_paid"
    t.integer  "or_number",                  limit: 4
    t.float    "total_payment",              limit: 24
    t.float    "principal_amount",           limit: 24
    t.float    "interest_amount",            limit: 24
    t.float    "installment_penalty_amount", limit: 24
    t.float    "balance_penalty_amount",     limit: 24
    t.float    "grand_total",                limit: 24
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "loan_id",                    limit: 4
  end

  create_table "spouses", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "first_name",           limit: 255
    t.string   "middle_name",          limit: 255
    t.string   "family_name",          limit: 255
    t.date     "birthdate"
    t.integer  "age",                  limit: 4
    t.string   "citizenship",          limit: 255
    t.string   "sex",                  limit: 6
    t.string   "civil_status",         limit: 13
    t.integer  "no_of_dependents",     limit: 4
    t.string   "home_address",         limit: 255
    t.string   "home_zip_code",        limit: 255
    t.string   "education",            limit: 13
    t.string   "cellphone_number",     limit: 255
    t.string   "email_address",        limit: 255
    t.string   "sss_hdmf_gsis_number", limit: 255
    t.string   "occupation",           limit: 13
    t.string   "employment_type",      limit: 5
    t.integer  "years_worked",         limit: 4
    t.integer  "years_abroad",         limit: 4
    t.date     "contract_end"
    t.string   "insurance",            limit: 255
    t.integer  "coverage_amount",      limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "password",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end
