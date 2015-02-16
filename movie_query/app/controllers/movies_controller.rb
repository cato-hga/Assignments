
#puts "#{movie['title']}:#{movie['synopsis']} \n\n"
#  puts 'Movie: ', movie.values_at('title').join(' '), "\n"
#  puts'Synopsis: ', movie.values_at('synopsis').join(' '), "\n"

class MoviesController < ApplicationController

QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=g6erjnt3dwhzmjkyxt9sjvzt'

  def search

  movietitle = params['title']

  uri = URI(QUERY_URL + "&q=#{movietitle}")

  movie_json = Net::HTTP.get(uri)

  parsed_info = JSON.parse(movie_json)['movies']

  @movie = parsed_info.first

  @synopsis = @movie.values_at('synopsis').join(' ')
  end
end
