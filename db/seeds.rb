# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Movie.destroy_all

require "json"
require "open-uri"


10.times do
  url = "https://tmdb.lewagon.com/movie/#{rand(50..500)}"
  URI.open(url).read
  movie = JSON.parse(URI.open(url).read)
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}", rating: movie["vote_average"])
end

List.create(name: "Horror Movies")
List.create(name: "Foreign Cinema")
List.create(name: "Drama")
List.create(name: "Classics")

p "seeding"
