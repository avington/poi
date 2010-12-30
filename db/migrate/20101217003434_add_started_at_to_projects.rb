class AddStartedAtToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :started_at, :date
  end

  def self.down
    remove_column :projects, :started_at
  end
end
