class Task < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :name
  validates_presence_of :rate
  validates_numericality_of :rate
end
