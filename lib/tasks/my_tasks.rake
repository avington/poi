task :user_check => :environment do

  users = User.all
  users.each do |u|
    puts u.email
  end


end
