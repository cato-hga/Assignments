#Read about HTTP
#Read review on using JSON in Ruby
#Look thru some JSON Examples
#Copy assignment 15 and modify to now read in questions from a JSON file
#This means you need to create a JSON file of you questions
#Read and parse the JSON into an array so the rest of the app remains the same

require 'json'

puts "Hello, what is your name?"

name = gets.chomp

puts "Great to meet you #{name.capitalize}! I would like to get to know you a
little better.Let me ask you a couple of questions."


file = File.read('assignment17.json')

puts file

user_questions = JSON.parse(file)

answers = Array.new

user_questions.each do |q|
  puts q
  answers = gets.chomp
end

print "Cool! Thanks for the information."
