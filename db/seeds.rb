# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Dir[Rails.root.join("spec/factories/*.rb")].each { |file| require file }

FactoryGirl.create :person, name: 'Tommy'
FactoryGirl.create :person, name: 'Sky'
FactoryGirl.create :person, name: 'Franky'
FactoryGirl.create :person, name: 'Mohan'
FactoryGirl.create :person, name: 'Arini'
