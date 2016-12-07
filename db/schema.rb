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

ActiveRecord::Schema.define(version: 20161101145439) do

  create_table "buyers", force: :cascade do |t|
    t.datetime "created_at",                                                           null: false
    t.datetime "updated_at",                                                           null: false
    t.string   "first_name",                      limit: 255
    t.string   "middle_name",                     limit: 255
    t.string   "family_name",                     limit: 255
    t.date     "birthdate"
    t.integer  "age",                             limit: 4
    t.string   "citizenship",                     limit: 255
    t.string   "sex",                             limit: 6
    t.string   "civil_status",                    limit: 13
    t.integer  "no_of_dependents",                limit: 4
    t.string   "home_address",                    limit: 255
    t.string   "home_zip_code",                   limit: 255
    t.string   "home_ownership",                  limit: 21
    t.integer  "years_of_stay",                   limit: 4
    t.string   "home_tel_number",                 limit: 255
    t.string   "prov_address",                    limit: 255
    t.string   "acr_resident_card_number",        limit: 255
    t.string   "prov_zip_code",                   limit: 255
    t.string   "education",                       limit: 13
    t.string   "cellphone_number",                limit: 255
    t.string   "email_address",                   limit: 255
    t.string   "sss_hdmf_gsis_number",            limit: 255
    t.string   "tin",                             limit: 255
    t.string   "occupation",                      limit: 13
    t.string   "employment_type",                 limit: 5
    t.integer  "years_worked",                    limit: 4
    t.integer  "years_abroad",                    limit: 4
    t.date     "contract_end"
    t.string   "insurance",                       limit: 255
    t.decimal  "coverage_amount",                             precision: 10
    t.string   "period_covered1",                 limit: 255
    t.string   "position1",                       limit: 255
    t.string   "employment_status1",              limit: 255
    t.string   "employer1",                       limit: 255
    t.string   "nature1",                         limit: 255
    t.string   "office_tel_no1",                  limit: 255
    t.string   "period_covered2",                 limit: 255
    t.string   "position2",                       limit: 255
    t.string   "employment_status2",              limit: 255
    t.string   "employer2",                       limit: 255
    t.string   "nature2",                         limit: 255
    t.string   "office_tel_no2",                  limit: 255
    t.string   "period_covered3",                 limit: 255
    t.string   "position3",                       limit: 255
    t.string   "employment_status3",              limit: 255
    t.string   "employer3",                       limit: 255
    t.string   "nature3",                         limit: 255
    t.string   "office_tel_no3",                  limit: 255
    t.string   "spouse_first_name",               limit: 255
    t.string   "spouse_middle_name",              limit: 255
    t.string   "spouse_family_name",              limit: 255
    t.date     "spouse_birthdate"
    t.integer  "spouse_age",                      limit: 4
    t.string   "spouse_citizenship",              limit: 255
    t.string   "spouse_sex",                      limit: 6
    t.string   "spouse_civil_status",             limit: 13
    t.integer  "spouse_no_of_dependents",         limit: 4
    t.string   "spouse_home_address",             limit: 255
    t.string   "spouse_home_zip_code",            limit: 255
    t.string   "spouse_education",                limit: 13
    t.string   "spouse_cellphone_number",         limit: 255
    t.string   "spouse_email_address",            limit: 255
    t.string   "spouse_sss_hdmf_gsis_number",     limit: 255
    t.string   "spouse_occupation",               limit: 13
    t.string   "spouse_employment_type",          limit: 5
    t.integer  "spouse_years_worked",             limit: 4
    t.integer  "spouse_years_abroad",             limit: 4
    t.date     "spouse_contract_end"
    t.string   "spouse_insurance",                limit: 255
    t.integer  "spouse_coverage_amount",          limit: 4
    t.string   "spouse_period_covered1",          limit: 255
    t.string   "spouse_position1",                limit: 255
    t.string   "spouse_employment_status1",       limit: 255
    t.string   "spouse_employer1",                limit: 255
    t.string   "spouse_nature1",                  limit: 255
    t.string   "spouse_office_tel_no1",           limit: 255
    t.string   "spouse_period_covered2",          limit: 255
    t.string   "spouse_position2",                limit: 255
    t.string   "spouse_employment_status2",       limit: 255
    t.string   "spouse_employer2",                limit: 255
    t.string   "spouse_nature2",                  limit: 255
    t.string   "spouse_office_tel_no2",           limit: 255
    t.string   "spouse_period_covered3",          limit: 255
    t.string   "spouse_position3",                limit: 255
    t.string   "spouse_employment_status3",       limit: 255
    t.string   "spouse_employer3",                limit: 255
    t.string   "spouse_nature3",                  limit: 255
    t.string   "spouse_office_tel_no3",           limit: 255
    t.decimal  "applicant_salary",                            precision: 15, scale: 2
    t.decimal  "applicant_allowances",                        precision: 15, scale: 2
    t.decimal  "applicant_expenses",                          precision: 15, scale: 2
    t.decimal  "applicant_business_income",                   precision: 15, scale: 2
    t.decimal  "applicant_commissions",                       precision: 15, scale: 2
    t.decimal  "applicant_others",                            precision: 15, scale: 2
    t.decimal  "applicant_gross_family_income",               precision: 15, scale: 2
    t.decimal  "applicant_total_expenses",                    precision: 15, scale: 2
    t.decimal  "applicant_net_disposable_income",             precision: 15, scale: 2
    t.decimal  "spouse_salary",                               precision: 15, scale: 2
    t.decimal  "spouse_allowances",                           precision: 15, scale: 2
    t.decimal  "spouse_expenses",                             precision: 15, scale: 2
    t.decimal  "spouse_business_income",                      precision: 15, scale: 2
    t.decimal  "spouse_commissions",                          precision: 15, scale: 2
    t.decimal  "spouse_others",                               precision: 15, scale: 2
    t.decimal  "spouse_gross_family_income",                  precision: 15, scale: 2
    t.decimal  "spouse_total_expenses",                       precision: 15, scale: 2
    t.decimal  "spouse_net_disposable_income",                precision: 15, scale: 2
    t.decimal  "total_salary",                                precision: 15, scale: 2
    t.decimal  "total_allowances",                            precision: 15, scale: 2
    t.decimal  "total_expenses",                              precision: 15, scale: 2
    t.decimal  "total_business_income",                       precision: 15, scale: 2
    t.decimal  "total_commissions",                           precision: 15, scale: 2
    t.decimal  "total_others",                                precision: 15, scale: 2
    t.decimal  "total_gross_family_income",                   precision: 15, scale: 2
    t.decimal  "total_total_expenses",                        precision: 15, scale: 2
    t.decimal  "total_net_disposable_income",                 precision: 15, scale: 2
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "TCT",                    limit: 4
    t.string   "subdivision_name",       limit: 255
    t.integer  "block",                  limit: 4
    t.integer  "lot",                    limit: 4
    t.integer  "lot_area",               limit: 4
    t.integer  "floor_area",             limit: 4
    t.decimal  "purchase_price",                     precision: 15, scale: 2
    t.decimal  "monthly_installment",                precision: 15, scale: 2
    t.integer  "interest_rate",          limit: 4
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.integer  "buyer_id",               limit: 4
    t.string   "loan_type",              limit: 13
    t.boolean  "is_fully_paid",                                               default: false
    t.decimal  "balance_penalty_amount",             precision: 15, scale: 2
    t.decimal  "grand_total",                        precision: 15, scale: 2
  end

  create_table "payments", force: :cascade do |t|
    t.date     "due_date"
    t.date     "date_paid"
    t.integer  "or_number",                  limit: 4
    t.decimal  "total_payment",                        precision: 15, scale: 2
    t.decimal  "principal_amount",                     precision: 15, scale: 2
    t.decimal  "interest_amount",                      precision: 15, scale: 2
    t.decimal  "installment_penalty_amount",           precision: 15, scale: 2
    t.decimal  "balance_penalty_amount",               precision: 15, scale: 2
    t.decimal  "grand_total",                          precision: 15, scale: 2
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.integer  "loan_id",                    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "password",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end
