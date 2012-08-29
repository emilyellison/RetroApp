# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all
Team.destroy_all
Retro.destroy_all
Note.destroy_all

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

puts 'Teams created.'

puts 'Creating retros...'

Team.all.each do |team|
  10.times do |i|
    Retro.create(team_id: team.id, sprint: i)
  end
end

puts 'Retros created.'

puts 'Creating notes...'

note_array = [ 'Being awesome', 'Learning how to learn is the most important skill',
               'Explore Chicago', 'Try a new Ruby function out today', 'Pair with someone you never have',
               'Rails is just a big gem', 'Twitter Bootstrap is like having 60mph training wheels',
               'Keep on coding', 'Get a good night\'s sleep', 'Read up on news in Rails', 'Find a new gem',
               'See if you can complete something without a gem', 'Travel to Germany' ]

category_array = Category.all.collect { |x| x.id }

Retro.all.each do |retro|
  10.times do |i|
    Note.create(retro_id: retro.id, description: note_array.sample, category_id: category_array.sample)
  end
end

puts 'Note created.'