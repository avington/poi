class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.decimal :rate
      t.boolean :billable, :default => 80.00, :length => 8, :precision => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
