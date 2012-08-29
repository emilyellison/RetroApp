# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Retro.destroy_all
Category.destroy_all
Team.destroy_all

puts 'Creating categories...'

Category.create(name: 'Start')
Category.create(name: 'Stop')
Category.create(name: 'Continue')
Category.create(name: 'Aha')

puts 'Categories created.'

puts 'Creating teams...'

Team.create(name: 'Ellison')
Team.create(name: 'Code Academy')
Team.create(name: 'Fix It With Code')
Team.create(name: 'GitSetGo')
Team.create(name: 'BeerOn')
Team.create(name: 'Code Overflow')

puts 'Team created.'