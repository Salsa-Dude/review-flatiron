# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marc = Artist.create!(name: "Marc Antony", bio: "My artist bio")
salsa = Genre.create!(name: "Salsa")
el_cantante = Song.create!(name: "El Cantante", artist_id: marc.id, genre_id: salsa.id)
ayer = Song.create!(name: "Ayer", artist_id: marc.id, genre_id: salsa.id)
