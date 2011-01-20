class AddManyToManyTasks < ActiveRecord::Migration
  def self.up
    create_table :projects_tasks, :id => false do |t|
      t.references :project
      t.references :task
    end
  end

  def self.down
    drop_table :projects_tasks
  end
end
