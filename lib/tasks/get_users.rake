require_relative '../../config/environment.rb'

namespace :get_users do
  task :first => :environment do
    user = Users.find(0)
    puts "Username: #{user.name}"
  end
end
