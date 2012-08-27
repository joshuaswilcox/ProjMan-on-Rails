# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user.add_role :admin

puts 'Deleting all status'
Status.delete_all
Status.create!(:name => 'Open')
Status.create!(:name => 'Closed')
Status.create!(:name => 'Postponed')
Status.create!(:name => 'Need More Info')

puts 'Deleting all priorities'
Priority.delete_all
Priority.create!(:name => 'Low')
Priority.create!(:name => 'Medium')
Priority.create!(:name => 'High')
Priority.create!(:name => 'Urgent')
Priority.create!(:name => 'Blocker')

puts 'Seed done'