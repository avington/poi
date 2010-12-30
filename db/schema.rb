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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101217003434) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "client_id"
    t.decimal  "amount"
    t.integer  "invoice_number"
    t.date     "due_at"
    t.date     "sent_at"
    t.string   "subject"
    t.string   "remit_to"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "journal_entries", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.text     "description"
    t.date     "entered_at"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "hours"
  end

  create_table "projects", :force => true do |t|
    t.integer  "client_id"
    t.string   "name"
    t.text     "description"
    t.decimal  "budget"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hour_cap",    :default => 20
    t.date     "started_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "rate"
    t.boolean  "billable",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
