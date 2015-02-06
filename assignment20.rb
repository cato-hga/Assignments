require 'active_support'
require 'active_support/all'
require 'Date'

pizza = Date.today

print "The date of the beginning of this week is: ", pizza.beginning_of_week, "\n"

print "30 days from today will be: ", pizza + 30.days, "\n"

yearfromtd = pizza + 1.year

# %A gives the full weekday name
print "For next year, today's date will fall on: ", yearfromtd.strftime('%A'), "\n"

print "Let me find out what day of the week your birthday will be this year.", "\n"

print "When is your birthday?: (Like this: MM-DD OR MM/DD)"

birthday = gets.chomp

bday = Date.parse(2015.to_s + '/' + birthday)



print "Your birthday will be on a ", bday.strftime('%A'), " this year.", "\n"

print "I'll change your singular word to its plural form. ", "\n"

plural = gets.chomp.capitalize

print 'Your plural word is ' +  plural.pluralize, "\n"

print "Now pick a word that's plural and I will change it to its singular form. ", "\n"

singular = gets.chomp.capitalize

print 'Your singular word is ' + singular.singularize, "\n"


print "Type any phrase and I will shorten it to 20 letters. ", "\n"

shorten = gets.chomp

puts shorten.truncate(20)

threewords = %w( Tic Tac Toe)

#.to_sentence converts and array to a sentence
print threewords.to_sentence, "\n"
