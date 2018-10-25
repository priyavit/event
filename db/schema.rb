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

ActiveRecord::Schema.define(version: 20181025105857) do

  create_table "account_preferences", force: :cascade do |t|
    t.integer  "pin_code_digits",                     limit: 4
    t.integer  "mobile_number_digits",                limit: 4
    t.string   "starting_mobile_number",              limit: 255
    t.string   "currency",                            limit: 255
    t.string   "timezone",                            limit: 255
    t.string   "item_name_ids",                       limit: 255
    t.string   "vehicle_type_ids",                    limit: 255
    t.string   "income_name_ids",                     limit: 255
    t.string   "expense_name_ids",                    limit: 255
    t.integer  "account_id",                          limit: 4
    t.integer  "print_type",                          limit: 4
    t.integer  "no_of_print_pages",                   limit: 4
    t.integer  "cancellation_charges",                limit: 4
    t.integer  "cancellation_type",                   limit: 4
    t.text     "using_city_ids",                      limit: 65535
    t.text     "terms_conditions",                    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_print_copy",                 limit: 4,                              default: 1
    t.integer  "watermark_type",                      limit: 4,                              default: 1
    t.integer  "no_of_days",                          limit: 4,                              default: 0
    t.integer  "lr_font_size",                        limit: 4,                              default: 12
    t.integer  "delivery_font_size",                  limit: 4,                              default: 13
    t.string   "service_tax_code",                    limit: 255
    t.string   "pan_number",                          limit: 255
    t.integer  "lr_number_show_style",                limit: 4,                              default: 1
    t.integer  "lr_number_font_size",                 limit: 4,                              default: 12
    t.integer  "sender_number_status",                limit: 4,                              default: 1
    t.integer  "receiver_number_status",              limit: 4,                              default: 1
    t.integer  "is_allow_counter",                    limit: 4,                              default: 2
    t.string   "account_permissions",                 limit: 1024,                           default: "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    t.text     "news_feeds",                          limit: 65535
    t.integer  "branch_landline_number",              limit: 4,                              default: 2
    t.text     "watermark_text",                      limit: 65535
    t.integer  "records_per_page",                    limit: 4,                              default: 10
    t.integer  "print_template_id",                   limit: 4
    t.text     "using_id_types",                      limit: 65535
    t.integer  "default_gst_id",                      limit: 4
    t.text     "delivery_watermark_text",             limit: 65535
    t.integer  "delivery_watermark_type",             limit: 4,                              default: 1
    t.string   "theme_color",                         limit: 255,                            default: "#4693b8"
    t.integer  "show_gst_in_print",                   limit: 4,                              default: 1
    t.integer  "show_pan_in_print",                   limit: 4,                              default: 1
    t.string   "lr_no_configuration",                 limit: 255,                            default: "[9,16,6,16,1]"
    t.integer  "sticker_template_id",                 limit: 4,                              default: 1
    t.decimal  "agent_amt_limit",                                   precision: 13, scale: 2, default: 0.0
    t.integer  "vehicle_expiry_detail",               limit: 4
    t.integer  "expense_payment_indents_date",        limit: 4,                              default: 0
    t.integer  "placeholder_color_configuration",     limit: 4,                              default: 1
    t.string   "application_font_size",               limit: 255,                            default: "12"
    t.integer  "cargo_acceptance_date_range",         limit: 4,                              default: 1
    t.integer  "manual_expense_payment_indents_date", limit: 4,                              default: 0
    t.integer  "branchwise_analysis_date_range",      limit: 4,                              default: 2
    t.float    "tds_percentages",                     limit: 24,                             default: 0.0
    t.float    "commission_to_cargobookings",         limit: 24,                             default: 0.0
  end

  create_table "account_transactions", force: :cascade do |t|
    t.integer  "user_id",               limit: 4
    t.integer  "branch_id",             limit: 4
    t.datetime "trans_date"
    t.decimal  "amount",                              precision: 13, scale: 2, default: 0.0
    t.integer  "payment_type",          limit: 4
    t.integer  "transaction_type",      limit: 4
    t.string   "payment_category",      limit: 255
    t.text     "remarks",               limit: 65535
    t.string   "receipt_no",            limit: 255
    t.integer  "created_by",            limit: 4
    t.integer  "updated_by",            limit: 4
    t.string   "transaction_user_name", limit: 255
    t.string   "dd_number",             limit: 255
    t.datetime "done_on"
    t.integer  "locker_id",             limit: 4
    t.integer  "account_id",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account_transactions", ["payment_category"], name: "index_account_transactions_payment_category", using: :btree
  add_index "account_transactions", ["trans_date"], name: "index_account_transactions_trans_date", using: :btree
  add_index "account_transactions", ["user_id"], name: "index_account_transactions_user_id", using: :btree

  create_table "account_wise_sequences", force: :cascade do |t|
    t.integer  "account_id",   limit: 4
    t.integer  "lock_version", limit: 4, default: 0
    t.integer  "start_number", limit: 4
    t.integer  "end_number",   limit: 4
    t.integer  "next_number",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "name",                        limit: 255
    t.string   "subdomain",                   limit: 255
    t.integer  "status",                      limit: 4,     default: 1
    t.string   "address",                     limit: 255
    t.integer  "state_id",                    limit: 4
    t.integer  "city_id",                     limit: 4
    t.integer  "country_id",                  limit: 4
    t.integer  "pin_code",                    limit: 4
    t.string   "email",                       limit: 255
    t.string   "phone_number",                limit: 255
    t.string   "contact_person_name",         limit: 255
    t.string   "contact_person_phone_number", limit: 255
    t.string   "domain",                      limit: 255
    t.string   "redirects",                   limit: 255
    t.string   "pnr_code",                    limit: 255
    t.string   "account_number",              limit: 128
    t.string   "gsm_label",                   limit: 10
    t.string   "cdma_label",                  limit: 10
    t.text     "append_message",              limit: 65535
    t.text     "supported_states",            limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permissions",                 limit: 1024,  default: "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    t.string   "logo",                        limit: 255
    t.string   "locale",                      limit: 255,   default: "en"
    t.string   "time_zone",                   limit: 255,   default: "Asia/Calcutta"
    t.string   "date_time_format",            limit: 255,   default: "%d/%m/%Y"
    t.integer  "currency_format",             limit: 4,     default: 1
    t.string   "operator_currency",           limit: 255,   default: "inr"
    t.text     "supported_countries",         limit: 65535
    t.string   "counter_payment_code",        limit: 255
    t.integer  "sms_gateway",                 limit: 4,     default: 1
    t.string   "gst_provisional_id",          limit: 255
    t.string   "pan_number",                  limit: 255
    t.string   "sac_code",                    limit: 255
    t.integer  "gst_registered_state",        limit: 4
    t.text     "phone_number_length",         limit: 65535
    t.string   "zoho_id",                     limit: 255
    t.integer  "zoho_sequence_number",        limit: 4
    t.date     "created_on"
    t.integer  "region",                      limit: 4
    t.integer  "salesperson",                 limit: 4
    t.string   "cs_ref_number",               limit: 255
    t.text     "bank_ids",                    limit: 65535
    t.date     "trial_date"
    t.integer  "is_trial_base_checkbox_val",  limit: 4,     default: 2
  end

  create_table "ads", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.integer  "seller_id",   limit: 4
    t.string   "email",       limit: 255
    t.string   "img_url",     limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "agent_details", force: :cascade do |t|
    t.integer  "agent_id",                          limit: 4
    t.integer  "agent_type",                        limit: 4
    t.integer  "is_postpaid",                       limit: 4
    t.decimal  "cargo_commission",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "credit_limit",                                    precision: 13, scale: 2, default: 0.0
    t.decimal  "notify_limit",                                    precision: 13, scale: 2, default: 0.0
    t.decimal  "balance_amount",                                  precision: 13, scale: 2, default: 0.0
    t.decimal  "delivery_commission",                             precision: 13, scale: 2, default: 0.0
    t.integer  "track_payment_by_lr",               limit: 4,                              default: 2
    t.integer  "allow_cancellation",                limit: 4,                              default: 2
    t.integer  "is_intimated",                      limit: 4,                              default: 2
    t.string   "organisation_name",                 limit: 255
    t.text     "owner_name",                        limit: 65535
    t.date     "login_issued_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "booking_commission_type",           limit: 4,                              default: 2
    t.integer  "delivery_commission_type",          limit: 4,                              default: 1
    t.integer  "is_paid_delivery_commission",       limit: 4,                              default: 1
    t.integer  "is_to_pay_delivery_commission",     limit: 4,                              default: 1
    t.integer  "is_on_account_delivery_commission", limit: 4,                              default: 1
    t.text     "booking_commission_hash",           limit: 65535
    t.text     "delivery_commission_hash",          limit: 65535
  end

  create_table "allowances_configuration_for_routes", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.integer  "route_id",   limit: 4
    t.integer  "staff_id",   limit: 4
    t.string   "amount",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "collection_person", limit: 4
    t.integer  "branch_id",         limit: 4
    t.integer  "account_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "assigned_agents",   limit: 65535
  end

  create_table "article_value_claims", force: :cascade do |t|
    t.integer  "from_value", limit: 4
    t.integer  "to_value",   limit: 4
    t.integer  "status",     limit: 4, default: 1
    t.integer  "amount",     limit: 4
    t.integer  "account_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendance_logs", force: :cascade do |t|
    t.integer  "emp_id",           limit: 4
    t.date     "log_created_date"
    t.string   "device_number",    limit: 255
    t.string   "check_in_type",    limit: 255
    t.string   "log_time",         limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "attendance_logs", ["device_number", "emp_id", "log_created_date"], name: "attendance_logs_emp_id_log_created_date", using: :btree
  add_index "attendance_logs", ["device_number", "emp_id"], name: "attendance_logs_emp_id", using: :btree
  add_index "attendance_logs", ["device_number", "log_created_date"], name: "attendance_logs_log_created_date", using: :btree
  add_index "attendance_logs", ["device_number"], name: "attendance_logs_device_number", using: :btree

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id",        limit: 4
    t.string   "auditable_type",      limit: 255
    t.integer  "associated_id",       limit: 4
    t.string   "associated_type",     limit: 255
    t.integer  "user_id",             limit: 4
    t.integer  "account_id",          limit: 4
    t.string   "user_type",           limit: 255
    t.string   "username",            limit: 255
    t.string   "action",              limit: 255
    t.text     "audited_changes",     limit: 65535
    t.text     "descriptive_changes", limit: 65535
    t.string   "name",                limit: 255
    t.integer  "version",             limit: 4,     default: 0
    t.string   "comment",             limit: 255
    t.string   "remote_address",      limit: 255
    t.string   "request_uuid",        limit: 255
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "balance_sheets", force: :cascade do |t|
    t.integer  "vehicle_id",         limit: 4
    t.decimal  "vehicle_hire",                     precision: 13, scale: 2, default: 0.0
    t.date     "travel_date"
    t.text     "partner_commission", limit: 65535
    t.integer  "account_id",         limit: 4,                              default: 1
    t.integer  "created_by",         limit: 4
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
    t.decimal  "expenses",                         precision: 13, scale: 2, default: 0.0
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.integer  "account_id",          limit: 4
    t.string   "name",                limit: 255
    t.string   "branch",              limit: 255
    t.string   "ifsc_code",           limit: 255
    t.string   "city",                limit: 255
    t.string   "account_number",      limit: 255
    t.string   "account_holder_name", limit: 255
    t.decimal  "balance",                         precision: 13, scale: 2, default: 0.0
    t.integer  "status",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bank_deposit_details", force: :cascade do |t|
    t.integer  "account_id",       limit: 4
    t.integer  "user_id",          limit: 4
    t.integer  "bank_account_id",  limit: 4
    t.integer  "transaction_type", limit: 4
    t.decimal  "amount_deposited",               precision: 13, scale: 2, default: 0.0
    t.date     "deposited_date"
    t.string   "amount_details",   limit: 255
    t.text     "remarks",          limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",           limit: 4,                              default: 1
  end

  create_table "bank_details", force: :cascade do |t|
    t.string   "bank_name",  limit: 255
    t.integer  "country",    limit: 4
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "booking_configurations", force: :cascade do |t|
    t.decimal  "article_charges",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "sur_charges",                              precision: 13, scale: 2, default: 0.0
    t.decimal  "handling_charges",                         precision: 13, scale: 2, default: 0.0
    t.decimal  "with_pass_charges",                        precision: 13, scale: 2, default: 0.0
    t.decimal  "service_tax",                              precision: 13, scale: 2, default: 0.0
    t.decimal  "agent_tds",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "incidental_charges",                       precision: 13, scale: 2, default: 0.0
    t.integer  "account_id",                 limit: 4
    t.text     "booking_configurations",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "servicetax_limit_amount",                  precision: 13, scale: 2, default: 0.0
    t.decimal  "min_kg_or_cdm",                            precision: 13, scale: 2, default: 0.0
    t.decimal  "docket_charges",                           precision: 13, scale: 2, default: 0.0
    t.decimal  "to_pay_charges",                           precision: 13, scale: 2, default: 0.0
    t.float    "card_charges",               limit: 24,                             default: 0.0
    t.float    "vat_per",                    limit: 24,                             default: 0.0
    t.text     "insurance_slab",             limit: 65535
    t.decimal  "dc_charges",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "lr_charges",                               precision: 13, scale: 2, default: 0.0
    t.text     "vat_percentage",             limit: 65535
    t.text     "discount_slab",              limit: 65535
    t.integer  "handling_charges_type",      limit: 4,                              default: 1
    t.text     "hamali_charges_slab",        limit: 65535
    t.decimal  "luggage_commission",                       precision: 13, scale: 2, default: 0.0
    t.decimal  "gst_on_luggage_commission",                precision: 13, scale: 2, default: 0.0
    t.decimal  "city_charges",                             precision: 13, scale: 2, default: 0.0
    t.float    "cdm_configurations",         limit: 24,                             default: 2.5
    t.decimal  "door_delivery_charges",                    precision: 13, scale: 2, default: 0.0
    t.decimal  "minimum_charge_for_freight",               precision: 13, scale: 2
    t.decimal  "value_of_goods_config",                    precision: 13, scale: 2
  end

  create_table "branch_wise_sequences", force: :cascade do |t|
    t.integer  "account_id",   limit: 4
    t.integer  "branch_id",    limit: 4
    t.integer  "lock_version", limit: 4,   default: 0
    t.integer  "start_number", limit: 4
    t.integer  "end_number",   limit: 4
    t.integer  "next_number",  limit: 4
    t.integer  "seq_type",     limit: 4,   default: 4
    t.string   "code_type",    limit: 255
    t.integer  "include_year", limit: 4,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "branches", force: :cascade do |t|
    t.text     "name",                      limit: 65535
    t.integer  "account_id",                limit: 4
    t.integer  "status",                    limit: 4,     default: 1
    t.text     "address",                   limit: 65535
    t.integer  "state_id",                  limit: 4
    t.integer  "city_id",                   limit: 4
    t.integer  "country_id",                limit: 4
    t.string   "branch_code",               limit: 255
    t.string   "phone_number",              limit: 255
    t.integer  "is_booking_allowed",        limit: 4
    t.integer  "is_delivery_allowed",       limit: 4
    t.integer  "is_transhipment",           limit: 4
    t.integer  "delete_flag",               limit: 4
    t.integer  "pin_code",                  limit: 4
    t.string   "fax_number",                limit: 255
    t.integer  "is_hq_branch",              limit: 4
    t.integer  "primary_contact_id",        limit: 4
    t.string   "email",                     limit: 255
    t.string   "alternate_number",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lr_type",                   limit: 4
    t.string   "landline_number",           limit: 255
    t.string   "alternate_landline_number", limit: 255
    t.text     "delivery_branches",         limit: 65535
    t.integer  "is_allow_counter",          limit: 4,     default: 2
    t.integer  "is_head_office",            limit: 4,     default: 2
  end

  create_table "brokers", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "account_id",   limit: 4
    t.string   "email",        limit: 255
    t.string   "phone_number", limit: 255
    t.integer  "state_id",     limit: 4
    t.integer  "city_id",      limit: 4
    t.integer  "country_id",   limit: 4
    t.string   "address",      limit: 255
    t.integer  "pin_code",     limit: 4
    t.integer  "status",       limit: 1,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargo_accounts", force: :cascade do |t|
    t.integer  "account_id",         limit: 4
    t.integer  "agent_user_id",      limit: 4
    t.string   "transaction_number", limit: 255
    t.decimal  "amount",                           precision: 13, scale: 2, default: 0.0
    t.date     "date"
    t.integer  "payment_type",       limit: 4
    t.string   "dd_number",          limit: 255
    t.text     "description",        limit: 65535
    t.integer  "status",             limit: 4
    t.integer  "transaction_type",   limit: 4
    t.integer  "created_by",         limit: 4,                                            null: false
    t.integer  "updated_by",         limit: 4,                                            null: false
    t.text     "update_history",     limit: 65535
    t.integer  "is_cheque_cleared",  limit: 4,                              default: 1
    t.decimal  "balance",                          precision: 13, scale: 2, default: 0.0
    t.date     "dd_issuedate"
    t.integer  "manual_transaction", limit: 4,                              default: 1
    t.string   "status_track",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargo_booking_articles", force: :cascade do |t|
    t.integer  "cargo_booking_id",             limit: 4
    t.text     "item_details",                 limit: 65535
    t.integer  "quantity",                     limit: 4
    t.decimal  "rate",                                       precision: 13, scale: 2, default: 0.0
    t.decimal  "total",                                      precision: 13, scale: 2, default: 0.0
    t.float    "kgs",                          limit: 24
    t.float    "cdm",                          limit: 24
    t.integer  "cancelled_flag",               limit: 1,                              default: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "measurement_type",             limit: 4
    t.decimal  "total_measurement",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "charge_per_measurement",                     precision: 13, scale: 2, default: 0.0
    t.string   "type_of_packing",              limit: 255
    t.decimal  "actual_weight",                              precision: 13, scale: 2, default: 0.0
    t.string   "item_code",                    limit: 255
    t.integer  "unit",                         limit: 4
    t.integer  "vehicle_type_id",              limit: 4
    t.decimal  "vehicle_freight_amount",                     precision: 13, scale: 2, default: 0.0
    t.string   "supplier_name",                limit: 255
    t.integer  "value_of_goods",               limit: 4
    t.text     "due_package_names",            limit: 65535
    t.integer  "account_id",                   limit: 4
    t.string   "item_category",                limit: 255
    t.integer  "is_charge_per_quantity_or_kg", limit: 4,                              default: 1
    t.decimal  "length",                                     precision: 10
    t.decimal  "width",                                      precision: 10
    t.decimal  "height",                                     precision: 10
    t.integer  "partial_due_packages",         limit: 4,                              default: 0
  end

  add_index "cargo_booking_articles", ["account_id", "cargo_booking_id"], name: "cargo_art_cargo_booking_id_account", using: :btree
  add_index "cargo_booking_articles", ["account_id"], name: "cargo_booking_articles_account", using: :btree
  add_index "cargo_booking_articles", ["cargo_booking_id"], name: "cargo_booking_index", using: :btree

  create_table "cargo_booking_charges", force: :cascade do |t|
    t.integer  "cargo_booking_id",             limit: 4
    t.decimal  "packing_charges",                        precision: 13, scale: 2, default: 0.0
    t.decimal  "demurrage_charges",                      precision: 13, scale: 2, default: 0.0
    t.decimal  "security_charges",                       precision: 13, scale: 2, default: 0.0
    t.decimal  "pick_up_charges",                        precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "dc_charges",                             precision: 13, scale: 2, default: 0.0
    t.decimal  "unhandling_charges",                     precision: 13, scale: 2, default: 0.0
    t.decimal  "lr_charges",                             precision: 13, scale: 2, default: 0.0
    t.decimal  "octrai_charges",                         precision: 13, scale: 2, default: 0.0
    t.decimal  "other_handling_charges",                 precision: 13, scale: 2, default: 0.0
    t.decimal  "consignee_attachment_charges",           precision: 13, scale: 2, default: 0.0
    t.integer  "account_id",                   limit: 4
    t.decimal  "city_charges",                           precision: 13, scale: 2, default: 0.0
  end

  add_index "cargo_booking_charges", ["account_id"], name: "cargo_booking_charges_account", using: :btree

  create_table "cargo_bookings", force: :cascade do |t|
    t.string   "lr_number",                       limit: 255
    t.decimal  "paid",                                          precision: 13, scale: 2, default: 0.0
    t.decimal  "amount",                                        precision: 13, scale: 2, default: 0.0
    t.integer  "reservation_id",                  limit: 4
    t.text     "sender_address",                  limit: 65535
    t.text     "consignee_address",               limit: 65535
    t.text     "sender_name",                     limit: 65535
    t.string   "sender_number",                   limit: 30
    t.string   "sender_alternative_number",       limit: 30
    t.text     "consignee_name",                  limit: 65535
    t.string   "consignee_number",                limit: 30
    t.string   "consignee_alternative_number",    limit: 30
    t.integer  "created_by",                      limit: 4,                                            null: false
    t.datetime "created_on",                                                                           null: false
    t.integer  "updated_by",                      limit: 4,                                            null: false
    t.datetime "updated_on",                                                                           null: false
    t.decimal  "balance_paid",                                  precision: 13, scale: 2, default: 0.0
    t.integer  "collected_by",                    limit: 4
    t.string   "value_of_contents",               limit: 30
    t.string   "weight",                          limit: 20
    t.integer  "on_account_id",                   limit: 4
    t.integer  "origin",                          limit: 4
    t.integer  "destination",                     limit: 4
    t.integer  "total_quantity",                  limit: 4
    t.date     "travel_date"
    t.integer  "recieved_clerk",                  limit: 4
    t.date     "recieved_date"
    t.integer  "delivery_clerk",                  limit: 4
    t.date     "delivery_date"
    t.string   "cash_reciept_number",             limit: 255
    t.text     "reciever_details",                limit: 65535
    t.decimal  "other_charges",                                 precision: 13, scale: 2, default: 0.0
    t.integer  "account_id",                      limit: 4
    t.string   "received_lr_number",              limit: 255
    t.integer  "lr_type",                         limit: 4
    t.integer  "is_stock",                        limit: 4,                              default: 2
    t.text     "waybill_number",                  limit: 65535
    t.integer  "coach_id",                        limit: 4
    t.decimal  "hamali_amount",                                 precision: 13, scale: 2, default: 0.0
    t.decimal  "net_amount",                                    precision: 13, scale: 2, default: 0.0
    t.integer  "cancelled_flag",                  limit: 1,                              default: 2
    t.integer  "cancelled_by",                    limit: 4
    t.date     "cancelled_on"
    t.integer  "booked_by",                       limit: 4
    t.decimal  "agent_commission",                              precision: 13, scale: 2, default: 0.0
    t.date     "booked_on"
    t.integer  "from_branch_id",                  limit: 4
    t.integer  "to_branch_id",                    limit: 4
    t.decimal  "door_delivery_charges",                         precision: 13, scale: 2, default: 0.0
    t.integer  "is_amount_paid_to_branch",        limit: 4,                              default: 2
    t.datetime "amount_paid_on"
    t.decimal  "incidenatl_charges",                            precision: 13, scale: 2, default: 0.0
    t.decimal  "article_charges",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "sur_charges",                                   precision: 13, scale: 2, default: 0.0
    t.decimal  "door_booking_charges",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "with_pass_charges",                             precision: 13, scale: 2, default: 0.0
    t.decimal  "service_tax_charges",                           precision: 13, scale: 2, default: 0.0
    t.integer  "goods_condition",                 limit: 4
    t.integer  "acceptance_goods_condition",      limit: 4
    t.text     "remarks",                         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "adjusted_amount",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "agent_delivery_commission",                     precision: 13, scale: 2, default: 0.0
    t.decimal  "delivery_hamali_amount",                        precision: 13, scale: 2, default: 0.0
    t.decimal  "delivery_adjusted_amount",                      precision: 13, scale: 2, default: 0.0
    t.integer  "collection_status",               limit: 4,                              default: 2
    t.text     "collection_remarks",              limit: 65535
    t.integer  "accountant_id",                   limit: 4
    t.integer  "collected_from",                  limit: 4
    t.integer  "dispatch_type",                   limit: 4,                              default: 1
    t.integer  "current_to_branch",               limit: 4
    t.integer  "current_destination",             limit: 4
    t.text     "via_details",                     limit: 65535
    t.integer  "is_online",                       limit: 4,                              default: 1
    t.integer  "is_sms",                          limit: 4,                              default: 2
    t.integer  "sales_person_id",                 limit: 4
    t.integer  "on_account_collected_by",         limit: 4
    t.integer  "local_transhipment",              limit: 4,                              default: 1
    t.integer  "local_transhipment_sheet_id",     limit: 4
    t.integer  "locally_loaded_by",               limit: 4
    t.integer  "locally_received_by",             limit: 4
    t.integer  "mode_of_transport",               limit: 4,                              default: 1
    t.string   "sender_email",                    limit: 255
    t.string   "consignee_email",                 limit: 255
    t.decimal  "amount_collected",                              precision: 13, scale: 2, default: 0.0
    t.integer  "commission_paid_status",          limit: 4,                              default: 2
    t.integer  "commission_paid_by",              limit: 4
    t.integer  "commission_paid_to",              limit: 4
    t.string   "commission_collection_remarks",   limit: 255
    t.string   "invoice_no",                      limit: 255
    t.string   "esugum_no",                       limit: 255
    t.integer  "reason_of_discount",              limit: 4
    t.integer  "delivery_type",                   limit: 4
    t.decimal  "delivery_other_charges",                        precision: 13, scale: 2, default: 0.0
    t.integer  "delivery_other_charges_type",     limit: 4
    t.decimal  "docket_charges",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "value_sur_charges",                             precision: 13, scale: 2, default: 0.0
    t.decimal  "freight_sur_charges",                           precision: 13, scale: 2, default: 0.0
    t.integer  "on_account_invoice_id",           limit: 4
    t.integer  "due_pkgs",                        limit: 4
    t.integer  "on_account_type",                 limit: 4
    t.integer  "other_on_account_id",             limit: 4
    t.integer  "type_of_payment",                 limit: 4
    t.text     "sender_hash",                     limit: 65535
    t.text     "receiver_hash",                   limit: 65535
    t.text     "insurance_provider",              limit: 65535
    t.string   "policy_number",                   limit: 255
    t.date     "policy_date"
    t.decimal  "insurance_amount",                              precision: 13, scale: 2, default: 0.0
    t.decimal  "insurance_risk",                                precision: 13, scale: 2, default: 0.0
    t.integer  "approved_by",                     limit: 4
    t.string   "sender_id_number",                limit: 255
    t.string   "receiver_id_number",              limit: 255
    t.decimal  "to_pay_charges",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "collection_charges",                            precision: 13, scale: 2, default: 0.0
    t.integer  "pos_id",                          limit: 4
    t.integer  "sender_id_type",                  limit: 4
    t.integer  "receiver_id_type",                limit: 4
    t.integer  "is_missed",                       limit: 4,                              default: 2
    t.decimal  "card_charges",                                  precision: 13, scale: 2, default: 0.0
    t.string   "card_number",                     limit: 255
    t.string   "ticket_number",                   limit: 255
    t.decimal  "vat_tax",                                       precision: 13, scale: 2, default: 0.0
    t.decimal  "premium_charges",                               precision: 13, scale: 2, default: 0.0
    t.text     "lr_description",                  limit: 65535
    t.string   "location",                        limit: 255
    t.integer  "is_direct_delivery",              limit: 4
    t.integer  "delivery_person_id_type",         limit: 4
    t.integer  "feedback_id",                     limit: 4
    t.decimal  "sub_total_amount",                              precision: 13, scale: 2
    t.string   "tax_invoice_bill_number",         limit: 255
    t.integer  "missed_status_done_by",           limit: 4
    t.string   "delivery_seq_number",             limit: 255
    t.string   "allot_seq_no",                    limit: 255
    t.date     "local_transshipment_date"
    t.string   "converted_to_pay_lr",             limit: 255
    t.text     "lr_web_description",              limit: 65535
    t.integer  "card_transaction_number",         limit: 4
    t.integer  "counter_user_account_id",         limit: 4,                              default: -1
    t.integer  "lr_status",                       limit: 4
    t.date     "allotment_date"
    t.date     "un_allotment_date"
    t.string   "vwd_destintion_wise_id_sequence", limit: 255
  end

  add_index "cargo_bookings", ["account_id", "booked_on"], name: "booked_on_account_index", using: :btree
  add_index "cargo_bookings", ["account_id", "cancelled_on"], name: "cancelled_on_account_index", using: :btree
  add_index "cargo_bookings", ["account_id", "delivery_date"], name: "delivery_date_account_index", using: :btree
  add_index "cargo_bookings", ["account_id", "local_transshipment_date"], name: "cargo_bookings_account_local_transshipment_date", using: :btree
  add_index "cargo_bookings", ["account_id", "lr_number"], name: "lr_account_index", using: :btree
  add_index "cargo_bookings", ["account_id", "recieved_date"], name: "recieved_date_account_index", using: :btree
  add_index "cargo_bookings", ["account_id"], name: "index_cargo_bookings_account_id", using: :btree

  create_table "cargo_currency_conversions", force: :cascade do |t|
    t.string   "from_currency",  limit: 255, null: false
    t.string   "to_currency",    limit: 255, null: false
    t.float    "currency_value", limit: 24
    t.date     "currency_date",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargo_payment_infos", force: :cascade do |t|
    t.integer  "cargo_booking_id",         limit: 4
    t.integer  "account_id",               limit: 4
    t.string   "paid_currency",            limit: 255
    t.string   "base_currency",            limit: 255
    t.decimal  "base_currency_value",                  precision: 13, scale: 2
    t.decimal  "paid_currency_value",                  precision: 13, scale: 2
    t.decimal  "base_currency_unit_value",             precision: 13, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challan_lr_details", force: :cascade do |t|
    t.integer  "account_id",                limit: 4
    t.integer  "cargo_booking_id",          limit: 4
    t.integer  "goods_dispatch_challan_id", limit: 4
    t.integer  "truck_arrival_entries_id",  limit: 4
    t.string   "money_receipt_number",      limit: 255
    t.integer  "challan_pkgs",              limit: 4
    t.integer  "due_pkgs",                  limit: 4
    t.integer  "short_pkgs",                limit: 4
    t.integer  "excess_pkgs",               limit: 4
    t.integer  "received_pkgs",             limit: 4
    t.integer  "delivery_clerk",            limit: 4
    t.date     "delivery_date"
    t.decimal  "challan_weight",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "lr_weight",                               precision: 13, scale: 2, default: 0.0
    t.integer  "is_accepted",               limit: 4,                              default: 1
    t.integer  "current_pending_pkgs",      limit: 4
    t.integer  "is_delivered",              limit: 4,                              default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "due_package_names",         limit: 65535
  end

  create_table "city_codes", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.integer  "city_id",    limit: 4
    t.integer  "status",     limit: 4,     default: 1
    t.text     "city_code",  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_account_details", force: :cascade do |t|
    t.string   "account_id",       limit: 255
    t.string   "account_number",   limit: 255
    t.text     "account_name",     limit: 65535
    t.text     "bank_name",        limit: 65535
    t.text     "branch_name",      limit: 65535
    t.string   "ifsc_code",        limit: 255
    t.string   "service_tax_code", limit: 255
    t.string   "pan_number",       limit: 255
    t.string   "cin_number",       limit: 255
    t.integer  "status",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counter_account_histories", force: :cascade do |t|
    t.integer  "counter_user_account_id", limit: 4
    t.text     "description",             limit: 65535
    t.integer  "account_id",              limit: 4
    t.integer  "created_by",              limit: 4
    t.integer  "updated_by",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counter_user_accounts", force: :cascade do |t|
    t.integer  "counter_user_id",                 limit: 4
    t.float    "opening_balance",                 limit: 24,    default: 0.0
    t.float    "collections",                     limit: 24,    default: 0.0
    t.text     "pos_amounts_hash",                limit: 65535
    t.float    "refunds",                         limit: 24,    default: 0.0
    t.float    "incomes",                         limit: 24,    default: 0.0
    t.float    "expenses",                        limit: 24,    default: 0.0
    t.float    "available_balance",               limit: 24,    default: 0.0
    t.float    "closing_balance",                 limit: 24,    default: 0.0
    t.float    "closing_cash_balance",            limit: 24,    default: 0.0
    t.float    "discrepencies",                   limit: 24,    default: 0.0
    t.float    "next_day_opening_amount_in_cash", limit: 24,    default: 0.0
    t.string   "remarks",                         limit: 255
    t.integer  "bookings_count",                  limit: 4
    t.integer  "cancellations_count",             limit: 4
    t.integer  "account_id",                      limit: 4
    t.string   "txn_number",                      limit: 255
    t.integer  "incomes_count",                   limit: 4
    t.integer  "expenses_count",                  limit: 4
    t.float    "discount",                        limit: 24,    default: 0.0
    t.float    "other_amounts_hash",              limit: 24,    default: 0.0
    t.string   "settlement_type",                 limit: 255,   default: "CASH"
    t.string   "deposit_type",                    limit: 255
    t.string   "deposit_time",                    limit: 255
    t.string   "deposit_number",                  limit: 255
    t.integer  "branch_id",                       limit: 4
    t.integer  "user_id",                         limit: 4
    t.integer  "counter_id",                      limit: 4
    t.integer  "shift_id",                        limit: 4
    t.string   "pos_ids",                         limit: 255
    t.datetime "opened_on"
    t.datetime "closed_on"
    t.integer  "created_by",                      limit: 4
    t.integer  "updated_by",                      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "cargo_booking_ids",               limit: 65535
  end

  create_table "counter_users", force: :cascade do |t|
    t.integer  "counter_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.string   "pos_ids",    limit: 255
    t.string   "shift_id",   limit: 255
    t.integer  "status",     limit: 4,   default: 2
    t.date     "sys_date"
    t.datetime "opened_on"
    t.datetime "closed_on"
    t.integer  "account_id", limit: 4
    t.integer  "branch_id",  limit: 4
    t.integer  "created_by", limit: 4
    t.integer  "updated_by", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counters", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.text     "assets",      limit: 65535
    t.integer  "branch_id",   limit: 4
    t.string   "user_ids",    limit: 255
    t.string   "pos_ids",     limit: 255
    t.integer  "status",      limit: 4,     default: 1
    t.integer  "created_by",  limit: 4
    t.integer  "updated_by",  limit: 4
    t.integer  "account_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_notes", force: :cascade do |t|
    t.integer  "cargo_booking_id",            limit: 4
    t.integer  "account_id",                  limit: 4
    t.integer  "gst_configuration_id",        limit: 4
    t.string   "gst_provisional_id",          limit: 255
    t.string   "customer_gst_provisional_id", limit: 255
    t.string   "invoice_serial_number",       limit: 255
    t.string   "credit_note_serial_number",   limit: 255
    t.date     "invoice_date"
    t.date     "credit_note_date"
    t.string   "sac_code",                    limit: 255
    t.string   "place_of_supply",             limit: 255
    t.float    "gst",                         limit: 24
    t.float    "cgst",                        limit: 24
    t.float    "sgst",                        limit: 24
    t.float    "igst",                        limit: 24
    t.decimal  "gst_amount",                              precision: 13, scale: 2
    t.decimal  "cgst_amount",                             precision: 13, scale: 2
    t.decimal  "sgst_amount",                             precision: 13, scale: 2
    t.decimal  "igst_amount",                             precision: 13, scale: 2
    t.decimal  "total_amount",                            precision: 13, scale: 2
    t.decimal  "total_net_amount",                        precision: 13, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "css_countries", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "currency_symbol",   limit: 255
    t.integer  "status",            limit: 4,   default: 1
    t.string   "currency_name",     limit: 255
    t.string   "country_code",      limit: 255
    t.string   "iso_code",          limit: 255
    t.string   "short_name",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso_currency_code", limit: 255
  end

  create_table "currency_conversions", force: :cascade do |t|
    t.string   "from_currency",         limit: 255
    t.string   "to_currency",           limit: 255
    t.integer  "account_id",            limit: 4
    t.decimal  "currency_value",                    precision: 13, scale: 2
    t.date     "currency_date"
    t.date     "currency_updated_date"
    t.integer  "status",                limit: 4,                            default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_consignees", force: :cascade do |t|
    t.text     "name",                           limit: 65535
    t.string   "customer_code",                  limit: 255
    t.integer  "status",                         limit: 4,     default: 1
    t.string   "mobile_number",                  limit: 255
    t.string   "alternative_number",             limit: 255
    t.text     "address",                        limit: 65535
    t.string   "email",                          limit: 255
    t.integer  "account_id",                     limit: 4
    t.integer  "customer_id",                    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id",                        limit: 4
    t.text     "item_wise_fare",                 limit: 65535
    t.text     "item_wise_fare_with_qty_kg_cdm", limit: 65535
    t.string   "sur_name",                       limit: 255
    t.string   "street_number",                  limit: 255
    t.string   "block",                          limit: 255
    t.string   "commune",                        limit: 255
    t.string   "id_number",                      limit: 255
    t.integer  "id_type",                        limit: 4
    t.text     "tin_number",                     limit: 65535
  end

  create_table "customer_privileges", force: :cascade do |t|
    t.string   "name",           limit: 64
    t.integer  "user_type",      limit: 1,   default: 1
    t.string   "description",    limit: 512
    t.string   "const_name",     limit: 128
    t.integer  "const_value",    limit: 8
    t.string   "related_to",     limit: 64
    t.integer  "category",       limit: 2
    t.integer  "order_num",      limit: 2
    t.string   "privilege_type", limit: 32
    t.integer  "enabled",        limit: 1,   default: 1
    t.integer  "visibility",     limit: 1,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.text     "name",               limit: 65535
    t.string   "customer_code",      limit: 255
    t.integer  "status",             limit: 4,     default: 1
    t.string   "mobile_number",      limit: 255
    t.string   "alternative_number", limit: 255
    t.text     "address",            limit: 65535
    t.string   "email",              limit: 255
    t.integer  "account_id",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id",            limit: 4
    t.string   "permissions",        limit: 1024,  default: "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    t.string   "sur_name",           limit: 255
    t.string   "street_number",      limit: 255
    t.string   "block",              limit: 255
    t.string   "commune",            limit: 255
    t.string   "id_number",          limit: 255
    t.integer  "id_type",            limit: 4
    t.text     "tin_number",         limit: 65535
    t.date     "created_date"
  end

  add_index "customers", ["account_id", "city_id", "status"], name: "customers_account_city_status", using: :btree
  add_index "customers", ["account_id", "city_id"], name: "customers_account_city", using: :btree
  add_index "customers", ["account_id", "created_date"], name: "customers_account_created_date", using: :btree
  add_index "customers", ["account_id"], name: "customers_account", using: :btree

  create_table "destinations", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "city_code",    limit: 255
    t.integer  "status",       limit: 4,   default: 1
    t.integer  "is_priorioty", limit: 4,   default: 1
    t.integer  "state_id",     limit: 4
    t.integer  "city_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id",   limit: 4,   default: 1
  end

  create_table "distribution_of_amounts_to_branches", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.text     "receipt_no", limit: 65535
    t.integer  "branch_id",  limit: 4
    t.date     "trans_date"
    t.integer  "created_by", limit: 4
    t.decimal  "amount",                   precision: 13, scale: 2, default: 0.0
    t.text     "remarks",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "driver_allowances", force: :cascade do |t|
    t.integer  "route_id",              limit: 4
    t.text     "driver1_allowance",     limit: 65535
    t.decimal  "localDriver_allowance",               precision: 13, scale: 2
    t.decimal  "cleaner_allowance",                   precision: 13, scale: 2
    t.integer  "account_id",            limit: 4
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "expense_payment_transactions", force: :cascade do |t|
    t.integer  "account_id",       limit: 4
    t.integer  "user_id",          limit: 4
    t.integer  "branch_id",        limit: 4
    t.date     "trans_date"
    t.decimal  "amount",                         precision: 13, scale: 2, default: 0.0
    t.integer  "indent_type",      limit: 4
    t.integer  "indent_id",        limit: 4
    t.integer  "payment_type",     limit: 4
    t.string   "receipt_no",       limit: 255
    t.string   "dd_number",        limit: 255
    t.string   "lr_number",        limit: 255
    t.text     "creation_remarks", limit: 65535
    t.integer  "approved_by",      limit: 4
    t.text     "approved_remarks", limit: 65535
    t.date     "approved_date"
    t.integer  "status",           limit: 4,                              default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by",       limit: 4
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "account_id",  limit: 4
    t.integer  "status",      limit: 4
    t.integer  "is_priority", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factura_invoices", force: :cascade do |t|
    t.integer  "account_id",                    limit: 4
    t.integer  "cargo_booking_id",              limit: 4
    t.integer  "send_type_id",                  limit: 4
    t.string   "organization_name",             limit: 255
    t.string   "business_name",                 limit: 255
    t.string   "address",                       limit: 255
    t.string   "common",                        limit: 255
    t.string   "giro",                          limit: 255
    t.string   "email",                         limit: 255
    t.integer  "city_id",                       limit: 4
    t.string   "contact_number",                limit: 255
    t.string   "rut_sender",                    limit: 255
    t.string   "rut_person_requesting_invoice", limit: 255
    t.string   "rut_operator",                  limit: 255
    t.integer  "folio_number",                  limit: 4
    t.integer  "track_id",                      limit: 4
    t.integer  "global_disount_type",           limit: 4
    t.date     "requested_date"
    t.integer  "dte_type",                      limit: 4
    t.integer  "total_quantity",                limit: 4
    t.decimal  "amount",                                    precision: 13, scale: 2, default: 0.0
    t.decimal  "vat_percent",                               precision: 4,  scale: 2, default: 0.0
    t.decimal  "net_amount",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "global_discount",                           precision: 13, scale: 2, default: 0.0
    t.decimal  "vat_amount",                                precision: 13, scale: 2, default: 0.0
    t.decimal  "total_amount",                              precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factura_item_details", force: :cascade do |t|
    t.integer  "account_id",         limit: 4
    t.integer  "factura_invoice_id", limit: 4
    t.string   "product_name",       limit: 255
    t.integer  "quantity",           limit: 4
    t.decimal  "unit_price",                     precision: 13, scale: 2, default: 0.0
    t.integer  "discount_type",      limit: 4
    t.decimal  "discount_amount",                precision: 13, scale: 2, default: 0.0
    t.decimal  "sub_total",                      precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedback_requests", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "company_name", limit: 255
    t.string   "email",        limit: 255
    t.string   "phone_number", limit: 255
    t.text     "address",      limit: 65535
    t.text     "message",      limit: 65535
    t.string   "remote_ip",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "feedback",   limit: 255
    t.integer  "account_id", limit: 4
    t.integer  "status",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goods_dispatch_challans", force: :cascade do |t|
    t.integer  "account_id",        limit: 4
    t.integer  "booked_at",         limit: 4
    t.string   "challan_num",       limit: 255
    t.date     "challan_date"
    t.datetime "challan_date_time"
    t.integer  "status",            limit: 4
    t.integer  "from_branch_id",    limit: 4
    t.integer  "to_branch_id",      limit: 4
    t.integer  "vehicle_id",        limit: 4
    t.integer  "driver_id",         limit: 4
    t.integer  "acceptance_status", limit: 4,   default: 1
    t.integer  "is_challan_hired",  limit: 4,   default: 1
    t.integer  "creation_status",   limit: 4,   default: 1
    t.integer  "created_by",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gst_configurations", force: :cascade do |t|
    t.string   "company_name",        limit: 255
    t.integer  "account_id",          limit: 4
    t.text     "company_address",     limit: 65535
    t.string   "pan_no",              limit: 255
    t.string   "email",               limit: 255
    t.integer  "city_id",             limit: 4
    t.integer  "state_id",            limit: 4
    t.string   "gst_provisional_id",  limit: 255
    t.decimal  "gst",                               precision: 13, scale: 2
    t.decimal  "cgst",                              precision: 13, scale: 2
    t.decimal  "sgst",                              precision: 13, scale: 2
    t.decimal  "igst",                              precision: 13, scale: 2
    t.date     "registered_date"
    t.string   "sac_code",            limit: 255
    t.text     "applicable_branches", limit: 65535
    t.integer  "status",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "id_card_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "status",     limit: 1,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id", limit: 4,   default: 1
    t.integer  "account_id", limit: 4
    t.integer  "is_default", limit: 4,   default: 2
  end

  create_table "incomes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "account_id",  limit: 4
    t.integer  "status",      limit: 4
    t.integer  "is_priority", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indents", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "account_id",       limit: 4
    t.integer  "indent_type",      limit: 4,   default: 1
    t.integer  "status",           limit: 4,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "transaction_type", limit: 4
  end

  create_table "invoices", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "account_id",         limit: 4
    t.date     "statement_date"
    t.date     "payment_due_date"
    t.decimal  "total_amount_due",                 precision: 13, scale: 2, default: 0.0
    t.decimal  "service_charges",                  precision: 13, scale: 2, default: 0.0
    t.decimal  "min_billing_amt",                  precision: 13, scale: 2, default: 0.0
    t.decimal  "max_billing_amt",                  precision: 13, scale: 2, default: 0.0
    t.decimal  "sms_amount",                       precision: 13, scale: 2, default: 0.0
    t.string   "number",             limit: 255
    t.string   "name",               limit: 255
    t.string   "owner_name",         limit: 255
    t.string   "email_ids",          limit: 255
    t.text     "account_details",    limit: 65535
    t.text     "billing_slab",       limit: 65535
    t.decimal  "total_amount",                     precision: 13, scale: 2, default: 0.0
    t.decimal  "service_tax",                      precision: 13, scale: 2, default: 0.0
    t.integer  "created_by",         limit: 4
    t.integer  "updated_by",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_fixed_invoice",   limit: 4,                              default: 2
    t.decimal  "dollar_value",                     precision: 13, scale: 2, default: 0.0
    t.string   "gst_provisional_id", limit: 255
    t.string   "pan_number",         limit: 255
    t.string   "sac_code",           limit: 255
    t.decimal  "cgst_per",                         precision: 5,  scale: 2, default: 0.0
    t.decimal  "sgst_per",                         precision: 5,  scale: 2, default: 0.0
    t.decimal  "igst_per",                         precision: 5,  scale: 2, default: 0.0
    t.decimal  "cgst_amount",                      precision: 13, scale: 2, default: 0.0
    t.decimal  "sgst_amount",                      precision: 13, scale: 2, default: 0.0
    t.decimal  "igst_amount",                      precision: 13, scale: 2, default: 0.0
    t.text     "billing_address",    limit: 65535
    t.decimal  "inr_values",                       precision: 13, scale: 9, default: 1.0
    t.string   "invoice_number",     limit: 255
    t.integer  "gst_state_id",       limit: 4
  end

  create_table "item_categories", force: :cascade do |t|
    t.text     "name",        limit: 65535
    t.text     "description", limit: 65535
    t.integer  "account_id",  limit: 4
    t.integer  "status",      limit: 1,     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_wise_route_fares", force: :cascade do |t|
    t.integer  "route_fare_id",                   limit: 4
    t.integer  "account_id",                      limit: 4
    t.integer  "item_id",                         limit: 4
    t.float    "per_kg",                          limit: 24
    t.float    "per_cdm",                         limit: 24
    t.float    "per_quantity",                    limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "min_weight",                      limit: 24,    default: 0.0
    t.float    "charge_for_min_weight",           limit: 24,    default: 0.0
    t.integer  "allow_quantity_charge",           limit: 4,     default: 2
    t.integer  "item_category_id",                limit: 4
    t.integer  "allow_charge_per_quantity_or_kg", limit: 4,     default: 1
    t.integer  "is_charge_per_kg_slab",           limit: 4,     default: 2
    t.text     "chargePerKgSlab",                 limit: 65535
  end

  create_table "items", force: :cascade do |t|
    t.text     "name",             limit: 65535
    t.text     "description",      limit: 65535
    t.integer  "account_id",       limit: 4
    t.integer  "status",           limit: 1,     default: 1
    t.integer  "is_priority",      limit: 1,     default: 1
    t.integer  "item_category_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by",       limit: 4
    t.string   "item_number",      limit: 255
    t.integer  "is_shipment_type", limit: 4,     default: 2
    t.integer  "grade_id",         limit: 4
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "operator_name", limit: 255
    t.string   "mobile_number", limit: 255
    t.string   "email",         limit: 255
    t.string   "country",       limit: 255
    t.string   "state",         limit: 255
    t.string   "city",          limit: 255
    t.integer  "pin_code",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "list_entries", force: :cascade do |t|
    t.integer  "entry_id",    limit: 4
    t.string   "entry_name",  limit: 255
    t.integer  "list_id",     limit: 4
    t.integer  "status",      limit: 1,   default: 1
    t.string   "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "local_transhipment_sheets", force: :cascade do |t|
    t.string   "number",      limit: 255
    t.integer  "account_id",  limit: 4
    t.integer  "from_branch", limit: 4
    t.integer  "to_branch",   limit: 4
    t.integer  "city_id",     limit: 4
    t.integer  "vehicle_id",  limit: 4
    t.date     "travel_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "driver_name", limit: 255
    t.integer  "driver_id",   limit: 4
  end

  add_index "local_transhipment_sheets", ["account_id", "travel_date"], name: "local_transhipment_sheets_travel_date_account", using: :btree
  add_index "local_transhipment_sheets", ["account_id"], name: "local_transhipment_sheets_account", using: :btree

  create_table "local_vehicles", force: :cascade do |t|
    t.string   "number",                  limit: 255
    t.integer  "account_id",              limit: 4
    t.integer  "status",                  limit: 4,                            default: 1
    t.integer  "vehicle_brand_id",        limit: 4
    t.integer  "vehicle_type_id",         limit: 4
    t.integer  "load_capacity",           limit: 4
    t.integer  "body_type",               limit: 4
    t.integer  "no_of_tyres",             limit: 4
    t.string   "engine_number",           limit: 255
    t.string   "chasis_number",           limit: 255
    t.integer  "manufacture_year",        limit: 4
    t.string   "permit_number",           limit: 255
    t.date     "permit_expiry_date"
    t.string   "insurance_policy_number", limit: 255
    t.date     "insuranace_expiry_date"
    t.date     "fitness_expiry_date"
    t.date     "tax_expiry_date"
    t.date     "pollution_expiry_date"
    t.decimal  "emi_amount",                          precision: 13, scale: 2, default: 0.0
    t.date     "emi_due_date"
    t.integer  "city_id",                 limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lr_histories", force: :cascade do |t|
    t.string   "lr_number",      limit: 255
    t.text     "description",    limit: 65535
    t.integer  "branch_id",      limit: 4
    t.integer  "reservation_id", limit: 4
    t.integer  "account_id",     limit: 4
    t.integer  "created_by",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "challan_id",     limit: 255
    t.string   "tar_id",         limit: 255
    t.integer  "lr_status_code", limit: 4
    t.date     "created_on"
    t.integer  "lr_type",        limit: 4
  end

  add_index "lr_histories", ["account_id", "created_on"], name: "lr_histories_account_created_on", using: :btree
  add_index "lr_histories", ["account_id", "lr_number"], name: "lr_account_index", using: :btree
  add_index "lr_histories", ["account_id"], name: "account_index", using: :btree

  create_table "lr_status_templates", force: :cascade do |t|
    t.integer  "account_id",              limit: 4
    t.integer  "lr_status_type",          limit: 4
    t.string   "lr_history_template",     limit: 1024
    t.string   "cargo_detail_template",   limit: 1024
    t.string   "website_detail_template", limit: 1024
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "master_invoices", force: :cascade do |t|
    t.integer  "account_id",            limit: 4
    t.string   "owner_name",            limit: 255
    t.text     "bank_account_details",  limit: 65535
    t.string   "email_ids",             limit: 255
    t.text     "billing_slab",          limit: 65535
    t.float    "per_sms_charges",       limit: 24
    t.decimal  "min_billing_amt",                     precision: 13, scale: 2, default: 0.0
    t.decimal  "max_billing_amt",                     precision: 13, scale: 2, default: 0.0
    t.decimal  "service_charges",                     precision: 13, scale: 2, default: 0.0
    t.float    "service_tax_per",       limit: 24
    t.integer  "created_by",            limit: 4
    t.integer  "updated_by",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_fixed_invoice",      limit: 4,                              default: 2
    t.integer  "sms_waive_limit",       limit: 4,                              default: 0
    t.integer  "invoice_generation_by", limit: 4,                              default: 1
  end

  create_table "mobile_app_settings", force: :cascade do |t|
    t.integer  "account_id",                   limit: 4
    t.integer  "cargo_booking_validation_pop", limit: 4, default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_account_accounts", force: :cascade do |t|
    t.integer  "account_id",         limit: 4
    t.integer  "on_account_id",      limit: 4
    t.string   "transaction_number", limit: 255
    t.decimal  "amount",                           precision: 13, scale: 2, default: 0.0
    t.date     "date"
    t.integer  "payment_type",       limit: 4
    t.string   "dd_number",          limit: 255
    t.text     "description",        limit: 65535
    t.integer  "status",             limit: 4
    t.integer  "transaction_type",   limit: 4
    t.integer  "created_by",         limit: 4,                                            null: false
    t.integer  "updated_by",         limit: 4,                                            null: false
    t.text     "update_history",     limit: 65535
    t.integer  "is_cheque_cleared",  limit: 4,                              default: 1
    t.decimal  "balance",                          precision: 13, scale: 2, default: 0.0
    t.date     "dd_issuedate"
    t.integer  "manual_transaction", limit: 4,                              default: 1
    t.string   "status_track",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_account_consignees", force: :cascade do |t|
    t.text     "name",               limit: 65535
    t.integer  "status",             limit: 4,     default: 1
    t.string   "mobile_number",      limit: 255
    t.string   "alternative_number", limit: 255
    t.text     "address",            limit: 65535
    t.string   "email",              limit: 255
    t.integer  "city_id",            limit: 4
    t.integer  "account_id",         limit: 4
    t.integer  "on_account_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "item_wise_fare",     limit: 65535
    t.integer  "id_type",            limit: 4
    t.string   "id_number",          limit: 255
  end

  create_table "on_account_freights", force: :cascade do |t|
    t.integer  "account_id",    limit: 4
    t.integer  "on_account_id", limit: 4
    t.integer  "origin",        limit: 4
    t.integer  "destination",   limit: 4
    t.decimal  "per_kg",                  precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_account_invoice_histories", force: :cascade do |t|
    t.integer  "on_account_invoice_id", limit: 4
    t.integer  "account_id",            limit: 4
    t.text     "description",           limit: 65535
    t.integer  "created_by",            limit: 4
    t.decimal  "total_paid_amount",                   precision: 10
    t.decimal  "to_be_paid",                          precision: 10
    t.decimal  "paid_amount",                         precision: 10
    t.integer  "on_account_id",         limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_account_invoices", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "account_id",      limit: 4
    t.integer  "on_account_id",   limit: 4
    t.date     "statement_date"
    t.decimal  "total_amount",                  precision: 13, scale: 2, default: 0.0
    t.decimal  "paid_amount",                   precision: 13, scale: 2, default: 0.0
    t.date     "paid_date"
    t.string   "number",          limit: 255
    t.string   "name",            limit: 255
    t.string   "email_ids",       limit: 255
    t.text     "account_details", limit: 65535
    t.decimal  "service_tax",                   precision: 13, scale: 2, default: 0.0
    t.integer  "created_by",      limit: 4
    t.integer  "updated_by",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "to_be_paid",                    precision: 13, scale: 2
  end

  create_table "on_account_vehiclewise_freights", force: :cascade do |t|
    t.integer  "account_id",            limit: 4
    t.integer  "on_account_id",         limit: 4
    t.integer  "vehicle_categories_id", limit: 4
    t.integer  "origin",                limit: 4
    t.integer  "destination",           limit: 4
    t.decimal  "per_vehicle",                     precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "on_accounts", force: :cascade do |t|
    t.text     "company_name",                 limit: 65535
    t.string   "email",                        limit: 255
    t.string   "phone_number",                 limit: 255
    t.text     "contact_person_name",          limit: 65535
    t.string   "contact_person_number",        limit: 255
    t.integer  "account_id",                   limit: 4
    t.string   "fax_number",                   limit: 255
    t.string   "tin_number",                   limit: 255
    t.string   "pan_number",                   limit: 255
    t.string   "sin_number",                   limit: 255
    t.text     "address",                      limit: 65535
    t.string   "alternate_number",             limit: 255
    t.integer  "payment_mode",                 limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id",                      limit: 4
    t.integer  "pin_code",                     limit: 4
    t.integer  "status",                       limit: 4,                              default: 1
    t.decimal  "credit_limit",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "notify_limit",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "balance_amount",                             precision: 13, scale: 2, default: 0.0
    t.string   "rut_of_the_company",           limit: 255
    t.string   "business_type",                limit: 255
    t.integer  "payment_condition",            limit: 4
    t.text     "other_charges_configurations", limit: 65535
    t.integer  "id_type",                      limit: 4
    t.string   "id_number",                    limit: 255
  end

  create_table "operator_settings", force: :cascade do |t|
    t.integer  "account_id",              limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label_codes",             limit: 1024, default: "1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
    t.string   "mob_num_starting_series", limit: 255,  default: "---\n- 7\n- 8\n- 9\n"
    t.integer  "transshipment_label",     limit: 4,    default: 1
  end

  create_table "partial_service_allotment_details", force: :cascade do |t|
    t.integer "account_id",                   limit: 4
    t.integer "partial_service_allotment_id", limit: 4
    t.integer "cargo_booking_id",             limit: 4
    t.integer "cargo_booking_artice_id",      limit: 4
    t.string  "item_name",                    limit: 255
    t.integer "total_pkgs",                   limit: 4
    t.integer "accepted_pkgs",                limit: 4
    t.integer "short_pkgs",                   limit: 4
    t.integer "allotted_by",                  limit: 4
    t.integer "accepted_by",                  limit: 4
    t.integer "route_id",                     limit: 4
    t.integer "vehicle_id",                   limit: 4
    t.integer "driver1_id",                   limit: 4
    t.integer "missed_pkg_status",            limit: 4
    t.integer "status",                       limit: 4
    t.date    "allotted_date"
    t.date    "accepted_date"
  end

  create_table "partial_service_allotments", force: :cascade do |t|
    t.integer  "account_id",    limit: 4
    t.string   "sequence_no",   limit: 255
    t.integer  "status",        limit: 4
    t.integer  "accepted_pkgs", limit: 4
    t.integer  "total_pkgs",    limit: 4
    t.integer  "short_pkgs",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string   "partner_name", limit: 255
    t.decimal  "commission",               precision: 13, scale: 2
    t.integer  "account_id",   limit: 4
    t.integer  "status",       limit: 4,                            default: 1
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  create_table "payment_receipts", force: :cascade do |t|
    t.integer  "account_id",              limit: 4
    t.date     "payment_date"
    t.integer  "payment_type",            limit: 4
    t.string   "dd_cheque_number",        limit: 255
    t.text     "description",             limit: 65535
    t.decimal  "amount",                                precision: 13, scale: 2
    t.string   "collected_by",            limit: 255
    t.integer  "updated_by",              limit: 4
    t.integer  "collected_from",          limit: 4
    t.string   "payment_made_by_contact", limit: 255
    t.integer  "receipt_type",            limit: 4
    t.text     "receipt_details",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_number_verifications", force: :cascade do |t|
    t.string   "mobile_number", limit: 255
    t.integer  "otp",           limit: 4
    t.integer  "otp_attempts",  limit: 4
    t.integer  "account_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "pos", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "status",        limit: 4,   default: 1
    t.integer  "branch_id",     limit: 4
    t.string   "description",   limit: 255
    t.string   "support_cards", limit: 255
    t.float    "tdr",           limit: 24
    t.string   "authorized_by", limit: 255
    t.string   "payment_cycle", limit: 255
    t.integer  "account_id",    limit: 4
    t.integer  "created_by",    limit: 4
    t.integer  "updated_by",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "print_templates", force: :cascade do |t|
    t.integer  "account_id",    limit: 4
    t.text     "print_html",    limit: 4294967295
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "template_name", limit: 255
  end

  create_table "privileges", force: :cascade do |t|
    t.string   "name",           limit: 64
    t.integer  "user_type",      limit: 1,   default: 1
    t.string   "description",    limit: 512
    t.string   "const_name",     limit: 128
    t.integer  "const_value",    limit: 8
    t.string   "related_to",     limit: 64
    t.integer  "category",       limit: 2
    t.integer  "order_num",      limit: 2
    t.string   "privilege_type", limit: 32
    t.integer  "enabled",        limit: 1,   default: 1
    t.integer  "visibility",     limit: 1,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proof_of_deliveries", force: :cascade do |t|
    t.integer  "account_id",       limit: 4
    t.integer  "cargo_booking_id", limit: 4
    t.string   "pod",              limit: 255
    t.integer  "uploaded_by",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pumps", force: :cascade do |t|
    t.string   "fuel_station_name", limit: 255
    t.string   "phone_number",      limit: 255
    t.integer  "city_id",           limit: 4
    t.integer  "state_id",          limit: 4
    t.integer  "account_id",        limit: 4
    t.integer  "status",            limit: 4,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "region_or_sales", force: :cascade do |t|
    t.string   "region_name", limit: 255
    t.text     "description", limit: 65535
    t.text     "states",      limit: 65535
    t.string   "email_ids",   limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "region_salespeople", force: :cascade do |t|
    t.string   "salesperson_name", limit: 255
    t.integer  "designation",      limit: 4
    t.integer  "region",           limit: 4
    t.string   "email",            limit: 255
    t.string   "phone_number",     limit: 255
    t.integer  "status",           limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "report_settings", force: :cascade do |t|
    t.integer  "account_id",          limit: 4
    t.integer  "report_id",           limit: 4
    t.integer  "level_type",          limit: 4
    t.string   "report_name",         limit: 255
    t.text     "print_configuration", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "data_configuration",  limit: 65535
    t.text     "display_order",       limit: 65535
    t.text     "print_order",         limit: 65535
  end

  create_table "requirements_or_issues", force: :cascade do |t|
    t.string   "req_or_issue_id", limit: 255
    t.date     "date"
    t.integer  "account_id",      limit: 4
    t.text     "description",     limit: 65535
    t.integer  "posted_by",       limit: 4
    t.integer  "task",            limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "number",               limit: 255
    t.string   "name",                 limit: 255
    t.integer  "origin",               limit: 4
    t.integer  "destination",          limit: 4
    t.string   "destination_pair_str", limit: 255
    t.integer  "account_id",           limit: 4
    t.integer  "status",               limit: 4,                            default: 1
    t.integer  "tieup",                limit: 4
    t.date     "travel_date"
    t.integer  "vehicle_id",           limit: 4
    t.decimal  "incomes",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "expenses",                         precision: 13, scale: 2, default: 0.0
    t.integer  "route_id",             limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",            limit: 30,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 null: false
    t.string   "permissions",     limit: 1024,  default: "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    t.string   "manage_role_ids", limit: 255,   default: ""
    t.text     "comments",        limit: 65535
    t.integer  "account_id",      limit: 4
    t.integer  "user_type",       limit: 1,     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "route_fares", force: :cascade do |t|
    t.integer  "origin",       limit: 4
    t.integer  "destination",  limit: 4
    t.float    "per_kg",       limit: 24
    t.float    "per_cdm",      limit: 24
    t.integer  "account_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "per_quantity", limit: 24, default: 0.0
  end

  create_table "routes", force: :cascade do |t|
    t.string   "number",               limit: 255
    t.string   "name",                 limit: 255
    t.integer  "origin",               limit: 4
    t.integer  "destination",          limit: 4
    t.string   "destination_pair_str", limit: 1536
    t.integer  "account_id",           limit: 4
    t.integer  "status",               limit: 4,    default: 1
    t.integer  "tieup",                limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ts_route_id",          limit: 4
  end

  create_table "sales_people", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "status",             limit: 4,                            default: 1
    t.string   "mobile_number",      limit: 255
    t.string   "alternative_number", limit: 255
    t.string   "address",            limit: 255
    t.string   "email",              limit: 255
    t.integer  "account_id",         limit: 4
    t.integer  "city_id",            limit: 4
    t.decimal  "commission",                     precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sequences", force: :cascade do |t|
    t.integer  "account_id",   limit: 4
    t.integer  "lock_version", limit: 4,   default: 0
    t.integer  "start_number", limit: 4
    t.integer  "end_number",   limit: 4
    t.integer  "next_number",  limit: 4
    t.integer  "seq_type",     limit: 4
    t.string   "code_type",    limit: 255
    t.integer  "include_year", limit: 4,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sequences", ["account_id", "seq_type"], name: "sequence_account_seq_type", unique: true, using: :btree

  create_table "shifts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "from",       limit: 255
    t.string   "to",         limit: 255
    t.integer  "account_id", limit: 4
    t.integer  "created_by", limit: 4
    t.integer  "updated_by", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sms_templates", force: :cascade do |t|
    t.integer  "account_id",   limit: 4
    t.integer  "sms_type",     limit: 4
    t.text     "sms_template", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sms_trackers", force: :cascade do |t|
    t.integer  "account_id",               limit: 4
    t.string   "from",                     limit: 64
    t.text     "to_list",                  limit: 65535
    t.integer  "count",                    limit: 4
    t.text     "message",                  limit: 65535
    t.string   "guid",                     limit: 255
    t.datetime "submitted_date"
    t.string   "sms_error",                limit: 64
    t.string   "tag",                      limit: 64
    t.integer  "is_processed",             limit: 4,     default: 2
    t.integer  "status",                   limit: 4,     default: 2
    t.string   "message_transaction_num",  limit: 255
    t.string   "gateway_provider_id",      limit: 2
    t.integer  "sms_count",                limit: 4
    t.string   "dlr_status",               limit: 25
    t.integer  "priority",                 limit: 4,     default: 2
    t.datetime "deliver_on"
    t.datetime "delivered_on"
    t.string   "message_transaction_resp", limit: 50
    t.date     "created_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_promotional",           limit: 4,     default: 2
    t.integer  "cargo_booking_id",         limit: 4
    t.integer  "is_otp_msg",               limit: 4
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "country_id",     limit: 4
    t.integer  "status",         limit: 4,   default: 1
    t.string   "state_code",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gst_digit_code", limit: 4
  end

  create_table "sticker_templates", force: :cascade do |t|
    t.integer  "account_id",   limit: 4
    t.text     "sticker_html", limit: 4294967295
    t.string   "sticker_name", limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "sys_privileges", force: :cascade do |t|
    t.string   "name",             limit: 128
    t.integer  "user_type",        limit: 1,     default: 1
    t.string   "description",      limit: 512
    t.string   "const_name",       limit: 128
    t.integer  "const_value",      limit: 8
    t.string   "related_to",       limit: 64
    t.integer  "category",         limit: 2
    t.integer  "order_num",        limit: 2
    t.string   "privilege_type",   limit: 32
    t.integer  "enabled",          limit: 1,     default: 1
    t.integer  "visibility",       limit: 1,     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "priv_description", limit: 65535
    t.string   "image_url",        limit: 255
  end

  create_table "tax_invoices", force: :cascade do |t|
    t.integer  "cargo_booking_id",            limit: 4
    t.integer  "account_id",                  limit: 4
    t.integer  "gst_configuration_id",        limit: 4
    t.string   "gst_provisional_id",          limit: 255
    t.string   "customer_gst_provisional_id", limit: 255
    t.string   "invoice_serial_number",       limit: 255
    t.date     "invoice_date"
    t.string   "sac_code",                    limit: 255
    t.string   "place_of_supply",             limit: 255
    t.float    "gst",                         limit: 24
    t.float    "cgst",                        limit: 24
    t.float    "sgst",                        limit: 24
    t.float    "igst",                        limit: 24
    t.decimal  "gst_amount",                              precision: 13, scale: 2
    t.decimal  "cgst_amount",                             precision: 13, scale: 2
    t.decimal  "sgst_amount",                             precision: 13, scale: 2
    t.decimal  "igst_amount",                             precision: 13, scale: 2
    t.decimal  "total_amount",                            precision: 13, scale: 2
    t.decimal  "total_net_amount",                        precision: 13, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_codes", force: :cascade do |t|
    t.string   "trip_code",   limit: 255
    t.integer  "account_id",  limit: 4
    t.string   "description", limit: 255
    t.integer  "status",      limit: 4,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_services", force: :cascade do |t|
    t.integer  "account_id",       limit: 4
    t.integer  "trip_sheet_id",    limit: 4
    t.text     "service_details",  limit: 65535
    t.text     "driver_expenses",  limit: 65535
    t.text     "vehicle_expenses", limit: 65535
    t.text     "fuel_expenses",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_sheets", force: :cascade do |t|
    t.integer  "account_id",       limit: 4
    t.integer  "trip_code_id",     limit: 4
    t.date     "trip_date"
    t.string   "trip_number",      limit: 255
    t.decimal  "advance",                        precision: 13, scale: 2, default: 0.0
    t.integer  "opening_kms",      limit: 4
    t.integer  "closing_kms",      limit: 4
    t.integer  "total_kms",        limit: 4
    t.integer  "vehicle_id",       limit: 4
    t.text     "trip_summary",     limit: 65535
    t.integer  "trip_closed",      limit: 4,                              default: 2
    t.date     "trip_closed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "truck_arrival_entries", force: :cascade do |t|
    t.integer  "account_id",                limit: 4
    t.integer  "goods_dispatch_challan_id", limit: 4
    t.integer  "issuing_branch",            limit: 4
    t.string   "tar_no",                    limit: 255
    t.date     "truck_arrival_date"
    t.datetime "truck_arrival_date_time"
    t.decimal  "unloading",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "detention",                               precision: 13, scale: 2, default: 0.0
    t.decimal  "od",                                      precision: 13, scale: 2, default: 0.0
    t.decimal  "others",                                  precision: 13, scale: 2, default: 0.0
    t.decimal  "claims",                                  precision: 13, scale: 2, default: 0.0
    t.decimal  "tds",                                     precision: 13, scale: 2, default: 0.0
    t.integer  "total_ch_pkgs",             limit: 4
    t.integer  "recd_pkgs",                 limit: 4
    t.integer  "short_pkgs",                limit: 4
    t.integer  "excess_pkgs",               limit: 4
    t.decimal  "lr_wt",                                   precision: 13, scale: 2, default: 0.0
    t.text     "remarks",                   limit: 65535
    t.integer  "slip_enclosed",             limit: 4
    t.integer  "creation_status",           limit: 4,                              default: 1
    t.integer  "created_by",                limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "due_package_names",         limit: 65535
  end

  create_table "ts_configurations", force: :cascade do |t|
    t.integer  "account_id", limit: 4
    t.string   "ts_url",     limit: 255
    t.string   "ts_api_key", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ts_routes", force: :cascade do |t|
    t.integer  "account_id",  limit: 4
    t.integer  "ts_route_id", limit: 4
    t.string   "name",        limit: 255
    t.string   "number",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ts_vehicle_staffs", force: :cascade do |t|
    t.integer  "account_id",          limit: 4
    t.integer  "ts_vehicle_staff_id", limit: 4
    t.string   "name",                limit: 255
    t.integer  "type_id",             limit: 4
    t.string   "type_name",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ts_vehicles", force: :cascade do |t|
    t.integer  "account_id",    limit: 4
    t.integer  "ts_vehicle_id", limit: 4
    t.string   "name",          limit: 255
    t.string   "number",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_of_packings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "account_id", limit: 4
    t.integer  "status",     limit: 1,   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_accounts", force: :cascade do |t|
    t.integer  "account_id",             limit: 4
    t.integer  "user_id",                limit: 4
    t.integer  "transaction_type",       limit: 4
    t.date     "transaction_date"
    t.text     "lr_or_receipt_no",       limit: 65535
    t.integer  "credit_or_debit",        limit: 4
    t.decimal  "amount",                               precision: 13, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "payment_type",           limit: 4
    t.decimal  "amount_to_be_paid",                    precision: 13, scale: 2
    t.decimal  "amount_to_be_collected",               precision: 13, scale: 2
    t.integer  "approved_by",            limit: 4
    t.date     "approved_date"
    t.integer  "created_by",             limit: 4
    t.text     "remarks",                limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.integer  "account_id",                limit: 4
    t.integer  "branch_id",                 limit: 4
    t.string   "login",                     limit: 255
    t.integer  "status",                    limit: 1,                              default: 1
    t.string   "email",                     limit: 255
    t.string   "remember_token",            limit: 255
    t.datetime "remember_token_expires_at"
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "address",                   limit: 255
    t.integer  "role_id",                   limit: 4
    t.integer  "staff_type",                limit: 4
    t.integer  "state_id",                  limit: 4
    t.integer  "city_id",                   limit: 4
    t.integer  "country_id",                limit: 4
    t.string   "employee_id",               limit: 255
    t.string   "phone_number",              limit: 255
    t.integer  "is_booking_allowed",        limit: 4
    t.integer  "is_delivery_allowed",       limit: 4
    t.integer  "is_transhipment",           limit: 4
    t.integer  "delete_flag",               limit: 1
    t.integer  "pin_code",                  limit: 4
    t.date     "dob"
    t.date     "doj"
    t.integer  "id_card_type",              limit: 4
    t.string   "id_card_number",            limit: 255
    t.string   "dl_number",                 limit: 255
    t.string   "previous_company",          limit: 255
    t.integer  "experience",                limit: 4
    t.integer  "gender",                    limit: 1
    t.string   "locale",                    limit: 255
    t.string   "api_key",                   limit: 255
    t.datetime "last_login_time"
    t.datetime "current_login_time"
    t.string   "residence_number",          limit: 255
    t.string   "office_number",             limit: 255
    t.date     "driving_licence_expiry"
    t.text     "address2",                  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_staff_type",        limit: 4
    t.string   "dl_issuing_authority",      limit: 255
    t.string   "badge_number",              limit: 255
    t.string   "referred_by",               limit: 255
    t.string   "esi_number",                limit: 255
    t.string   "pf_number",                 limit: 255
    t.string   "landline",                  limit: 255
    t.integer  "ts_vehicle_staff_id",       limit: 4
    t.string   "counter_ids",               limit: 255
    t.integer  "is_allow_counter",          limit: 4,                              default: 2
    t.integer  "load_all_counters",         limit: 4,                              default: 2
    t.integer  "is_incharge",               limit: 4,                              default: 2
    t.integer  "is_incharge_head",          limit: 4,                              default: 2
    t.decimal  "amount_to_be_paid",                       precision: 13, scale: 2, default: 0.0
    t.integer  "is_sso",                    limit: 4,                              default: 2
    t.string   "sso_auth_key",              limit: 255
    t.string   "account_number",            limit: 255
    t.string   "branch_name",               limit: 255
    t.string   "ifsc_code",                 limit: 255
    t.string   "mcr_code",                  limit: 255
    t.string   "beneficiary_name",          limit: 255
    t.string   "account_type",              limit: 255
    t.string   "payment_type",              limit: 255
    t.integer  "bank_id",                   limit: 4
    t.integer  "is_delete_for_ts_mapping",  limit: 4,                              default: 2
  end

  create_table "values", force: :cascade do |t|
    t.decimal  "incidental_charges",           precision: 13, scale: 2, default: 0.0
    t.integer  "from",               limit: 4
    t.integer  "to",                 limit: 4
    t.integer  "status",             limit: 1,                          default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_allotments", force: :cascade do |t|
    t.integer  "route_id",               limit: 4
    t.integer  "account_id",             limit: 4
    t.integer  "vehicle_id",             limit: 4
    t.integer  "driver1_id",             limit: 4
    t.integer  "driver2_id",             limit: 4
    t.integer  "cleaner_id",             limit: 4
    t.integer  "status",                 limit: 4,     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "travel_date"
    t.string   "vehicle_waybill_number", limit: 255
    t.float    "starting_kms",           limit: 24
    t.string   "allot_seq_no",           limit: 1024
    t.text     "driver_allowances",      limit: 65535
    t.integer  "trip_approvals",         limit: 4,     default: 2
    t.integer  "approved_by",            limit: 4,     default: -1
  end

  create_table "vehicle_categories", force: :cascade do |t|
    t.string   "vehicel_manufacturer", limit: 255
    t.string   "vehicle_type",         limit: 255
    t.float    "tonnage_capacity",     limit: 24
    t.string   "type_of_body",         limit: 255
    t.integer  "no_of_tyres",          limit: 4
    t.integer  "account_id",           limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "vehicle_freight",                  precision: 13, scale: 2, default: 0.0
  end

  create_table "vehicle_hires", force: :cascade do |t|
    t.string   "booked_at",      limit: 255
    t.date     "challan_date"
    t.datetime "challan_time"
    t.string   "lhp_number",     limit: 256
    t.integer  "status",         limit: 1,                              default: 1
    t.integer  "vehicle_id",     limit: 4
    t.integer  "from_branch_id", limit: 4
    t.integer  "to_branch_id",   limit: 4
    t.integer  "broker_id",      limit: 4
    t.text     "challan_ids",    limit: 65535
    t.integer  "driver_id",      limit: 4
    t.integer  "account_id",     limit: 4
    t.decimal  "actual_weight",                precision: 13, scale: 2, default: 0.0
    t.decimal  "charge_weight",                precision: 13, scale: 2, default: 0.0
    t.decimal  "rate",                         precision: 13, scale: 2, default: 0.0
    t.decimal  "lorry_hire",                   precision: 13, scale: 2, default: 0.0
    t.decimal  "hamali_other",                 precision: 13, scale: 2, default: 0.0
    t.string   "extra",          limit: 256
    t.string   "extra_remark",   limit: 256
    t.decimal  "tds",                          precision: 13, scale: 2, default: 0.0
    t.decimal  "total_hire",                   precision: 13, scale: 2, default: 0.0
    t.decimal  "advance",                      precision: 13, scale: 2, default: 0.0
    t.decimal  "balance",                      precision: 13, scale: 2, default: 0.0
    t.integer  "payable_at",     limit: 4
    t.string   "remark",         limit: 256
    t.integer  "created_by",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "number",                   limit: 255
    t.integer  "account_id",               limit: 4
    t.integer  "status",                   limit: 4,                            default: 1
    t.integer  "vehicle_brand_id",         limit: 4
    t.integer  "vehicle_type_id",          limit: 4
    t.integer  "load_capacity",            limit: 4
    t.integer  "body_type",                limit: 4
    t.integer  "no_of_typres",             limit: 4
    t.string   "engine_number",            limit: 255
    t.string   "chasis_number",            limit: 255
    t.integer  "manufacture_year",         limit: 4
    t.string   "permit_number",            limit: 255
    t.date     "permit_expiry_date"
    t.string   "insurance_policy_number",  limit: 255
    t.date     "insuranace_expiry_date"
    t.date     "fitness_expiry_date"
    t.date     "tax_expiry_date"
    t.date     "pollution_expiry_date"
    t.decimal  "emi_amount",                           precision: 13, scale: 2, default: 0.0
    t.date     "emi_due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ownership",                limit: 4,                            default: 1
    t.string   "owner_name",               limit: 255
    t.string   "owner_address",            limit: 255
    t.string   "contact_number",           limit: 255
    t.string   "pan_number",               limit: 255
    t.integer  "weight",                   limit: 4
    t.string   "fitness",                  limit: 255
    t.string   "insurance",                limit: 255
    t.integer  "ts_vehicle_id",            limit: 4
    t.integer  "type_of_service",          limit: 4,                            default: 1
    t.float    "kms_reading",              limit: 24,                           default: 0.0
    t.float    "kms_dup",                  limit: 24,                           default: 0.0
    t.integer  "is_delete_for_ts_mapping", limit: 4,                            default: 2
  end

  create_table "xebia_events", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "date"
    t.string   "venue",      limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
