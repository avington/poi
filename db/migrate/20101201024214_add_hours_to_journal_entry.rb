class AddHoursToJournalEntry < ActiveRecord::Migration
  def self.up
    add_column :journal_entries, :hours, :decimal
  end

  def self.down
    remove_column :journal_entries, :hours
  end
end
