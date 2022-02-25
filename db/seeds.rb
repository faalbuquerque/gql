# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = [
  {first_name: "Alice", last_name: "Santos", birth_year: 1990, alive: true},
  {first_name: "Breno", last_name: "Pereira", birth_year: 2010, alive: true},
  {first_name: "Clovis", last_name: "Aguiar", birth_year: 1980, alive: false},
]

Author.create(authors)
