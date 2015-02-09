#http://developer.rottentomatoes.com/
#Use Rotten Tomato's movie querying script to create a command line app which prompts the user for a movie title
#Using the entered movie title, search via the API for the movie's synopsis and output to the user
#If more than one movie comes back, show all the movie title matches with their synopsis

#loading libraries
require 'net/http'
require 'json'
require 'active_support'
require 'active_support/all'
#This is where you put in the API url plus your API key
QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=g6erjnt3dwhzmjkyxt9sjvzt'

timetogo = "goodbye!"

puts "Hello there! Please input the name of your favorite movie.."

loop do

movietitle = gets.chomp.downcase



puts "Great selection! Give me a moment while I find #{movietitle} for you."

uri = URI(QUERY_URL + "&q=#{movietitle}")


movie_json = Net::HTTP.get (uri)

parsed_info = JSON.parse(movie_json)['movies']

parsed_info.each do |movie|
 #puts "#{movie['title']}:#{movie['synopsis']} \n\n"
 puts 'Movie: ', movie.values_at('title').join(' '), "\n"
 puts'Synopsis: ', movie.values_at('synopsis').join(' '), "\n"
end

if movietitle != timetogo
  puts "Let's try another movie."
else
  puts "This is where we say goodbye. Until next time!"
  break
 end
end
