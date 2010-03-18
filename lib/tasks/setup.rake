namespace :sdauth do

  desc 'set up subdomain-authentication example with default user and administrator'
  task :setup => ['db:drop', 'db:create', 'db:migrate', 'environment'] do
    puts 'SETTING UP NEW USER AND ADMIN LOGINS'
    puts 'DELETING ANY EXISTING USER AND ADMIN RECORDS'
    user = User.create! do |u|
      u.name = 'firstuser'
      u.email = 'firstuser@test.com'
      u.password = 'please'
      u.password_confirmation = 'please'
    end
    user.confirm!
    puts 'New user created: ' << user.name
    user = User.create! do |u|
      u.name = 'otheruser'
      u.email = 'otheruser@test.com'
      u.password = 'please'
      u.password_confirmation = 'please'
    end
    user.confirm!
    puts 'New user created: ' << user.name

    admin = Admin.create! do |u|
      u.name = 'admin'
      u.email = 'admin@test.com'
      u.password = 'please'
      u.password_confirmation = 'please'
    end
    puts 'New admin created: ' << admin.name

    subdomain = Subdomain.create! do |s|
      s.user_id = '1'
      s.name = 'foo'
    end
    puts 'created subdomain: ' << subdomain.name
    subdomain = Subdomain.create! do |s|
      s.user_id = '1'
      s.name = 'bar'
    end
    puts 'created subdomain: ' << subdomain.name
  end
end