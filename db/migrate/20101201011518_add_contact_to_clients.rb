class AddContactToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :contact, :string
  end

  def self.down
    remove_column :clients, :contact
  end
end
