# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Task.destroy.all
puts "Database is clean"

puts "Creating Pokemons as tasks"
100.times do
  task = Task.create(
    title: Faker::Games::Pokemon.name,
    details: Faker::Games::Pokemon.move,
    # completed: rand(false, true)
    )
  puts "Task #{task.id} is created"
end

puts "Done!"
