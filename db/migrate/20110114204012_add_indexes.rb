class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :clients, :name
    add_index :invoices, :client_id
    add_index :invoices, :invoice_number
    add_index :projects, :client_id
    add_index :projects, :name
  end

  def self.down
  end
end
