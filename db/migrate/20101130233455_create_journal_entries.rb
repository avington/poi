class CreateJournalEntries < ActiveRecord::Migration
  def self.up
    create_table :journal_entries do |t|
      t.integer :project_id
      t.integer :user_id
      t.text :description
      t.date :entered_at
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :journal_entries
  end
end
