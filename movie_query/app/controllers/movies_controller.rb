
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

  movie = parsed_info.first

  #synopsis = @movie.values_at('synopsis').join(' ')

  @title = movie['title']
  @synopsis = movie['synopsis']
  @year = movie['year']
  @runtime = movie['runtime']
  @mpaa_rating = movie['mpaa_rating']
  @id = movie['id']
  @posters = movie['posters']['original']
  @poster = @posters.gsub('_tmb.jpg', '_ori.jpg')
  @clips_link = movie['links']['clips']


  end
end
