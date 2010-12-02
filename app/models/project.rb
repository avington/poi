class Project < ActiveRecord::Base
  belongs_to :client
  validates_numericality_of :budget
  validates_presence_of :name
  validates_presence_of :client_id
end
