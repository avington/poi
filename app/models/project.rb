class Project < ActiveRecord::Base
  belongs_to :client
  has_and_belongs_to_many :tasks
  validates_numericality_of :budget
  validates_presence_of :name
  validates_presence_of :client_id
  validates_numericality_of :hour_cap

  before_create :default_start
  before_validation :on => :create do
    #default_tasks
  end
  def default_start
    self.started_at = Date.today
  end
  def default_tasks
    if self.tasks.count == 0
      self.tasks << Task.find_by_name("admin")
      self.tasks << Task.find_by_name("development")
      self.tasks << Task.find_by_name("support")
      self.save
    end
  end

end
