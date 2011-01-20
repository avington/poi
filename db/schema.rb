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

ActiveRecord::Schema.define(:version => 20110114204012) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "contact"
  end

  add_index "clients", ["name"], :name => "index_clients_on_name"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["locked_by"], :name => "delayed_jobs_locked_by"
  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

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

  add_index "invoices", ["client_id"], :name => "index_invoices_on_client_id"
  add_index "invoices", ["invoice_number"], :name => "index_invoices_on_invoice_number"

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

  add_index "projects", ["client_id"], :name => "index_projects_on_client_id"
  add_index "projects", ["name"], :name => "index_projects_on_name"

  create_table "projects_tasks", :id => false, :force => true do |t|
    t.integer "project_id"
    t.integer "task_id"
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
