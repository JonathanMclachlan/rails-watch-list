# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'

puts "deleting existing data"
Movie.destroy_all

puts "fetching data"

url = 'https://tmdb.lewagon.com/movie/top_rated'
movie_data_serialized = URI.open(url).read
movie_data = JSON.parse(movie_data_serialized)
base_image_url = "https://image.tmdb.org/t/p/w500"

puts "creating movies"

movie_data["results"].each do |movie_hash|
  Movie.create(
    title: movie_hash["title"],
    overview: movie_hash["overview"],
    poster_url: "#{base_image_url}#{movie_hash["poster_path"]}",
    rating: movie_hash["vote_average"]
  )
end

puts "done creating movies"
