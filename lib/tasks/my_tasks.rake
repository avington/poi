task :user_check => :environment do

  users = User.all
  users.each do |u|
    puts u.email
  end


end
desc "Test data"
task :test_data => :environment do
  
  Task.delete_all
  Client.delete_all
  Project.delete_all
  
  Task.create!(:name => "development", :rate => 50.00)
  Task.create!(:name => "admin", :rate => 50.00)
  Task.create!(:name => "support", :rate => 50.00)

  Client.create!(:name => "Acme", :contact => "Steve", :email=> "test@test.com")
  Client.create!(:name => "Big Idea", :contact => "Ruby", :email=> "test2@test.com")

  Project.create!(:name => "Project A", :client_id => 1, :budget => 100, :hour_cap => 100).default_tasks
  Project.create!(:name => "Project B", :client_id => 1, :budget => 100, :hour_cap => 100).default_tasks

  Project.create!(:name => "Project X", :client_id => 2, :budget => 100, :hour_cap => 100).default_tasks
  Project.create!(:name => "Project Z", :client_id => 2, :budget => 100, :hour_cap => 100).default_tasks
end
