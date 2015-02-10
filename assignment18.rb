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


    puts "Hello there! Please input the name of your favorite movie.."


loop do
    movietitle = gets.chomp.downcase

    break if movietitle.length == 0

    puts "Great selection! Give me a moment while I find #{movietitle} for you."

    uri = URI(QUERY_URL + "&q=#{movietitle}")
#It's best not to have spaces between your methods and your arguments.
    movie_json = Net::HTTP.get(uri)

    parsed_info = JSON.parse(movie_json)['movies']

    parsed_info.each do |movie|
#puts "#{movie['title']}:#{movie['synopsis']} \n\n"
    puts 'Movie: ', movie.values_at('title').join(' '), "\n"
    puts'Synopsis: ', movie.values_at('synopsis').join(' '), "\n"
end

    puts " "
    print "Choose another movie if you like.."
end

    print "Appreciate your time. Until next time!"
    puts " "
