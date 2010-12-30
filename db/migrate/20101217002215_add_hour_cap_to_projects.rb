class AddHourCapToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :hour_cap, :integer, :default => 20
  end

  def self.down
    remove_column :projects, :hour_cap
  end
end
