namespace :myapp do

  desc 'set up subdomain-authentication example with default user and administrator'
  task :setup => ['db:drop', 'db:create', 'db:migrate', 'environment'] do
    puts 'SETTING UP NEW USER AND ADMIN LOGINS'
    puts 'DELETING ANY EXISTING USER AND ADMIN RECORDS'
    user = User.create! do |u|
			u.name = 'firstuser'
			u.email = 'user@test.com'
      u.password = 'user123'
      u.password_confirmation = 'user123'
    end
		user.confirm!
    puts 'New user created!'

    admin = Admin.create! do |u|
			u.name = 'admin'
			u.email = 'admin@test.com'
      u.password = 'admin123'
      u.password_confirmation = 'admin123'
    end
		admin.confirm!
    puts 'New admin created!'

    subdomain = Subdomain.create! do |s|
			s.user_id = '1'
			s.name = 'test'
    end
    puts 'created subdomain ' << subdomain.name
  end
end