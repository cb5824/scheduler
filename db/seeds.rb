# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! :name => 'Administrator', :email => 'admin@testemail.com', :password => 'password', :password_confirmation => 'password', :phone => '5555555555', :role => 'admin', :company => 'admin'
user.save!

5.times do
  FactoryBot.create(:user)
end

10.times do
  FactoryBot.create(:request)
end
