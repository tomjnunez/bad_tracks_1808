# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
artist = Artist.create(name: 'Rick Astley')
song = artist.songs.create(title: 'Never Gonna Give You Up', length: 250, play_count: 1000000)
song = artist.songs.create(title: 'Yeee hawwwww', length: 251, play_count: 1000001)
