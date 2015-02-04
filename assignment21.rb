#Attributes, accessors, instance variables
#and private methods 21

load "Person.rb"

require 'Date'
require "active_support"
require "active_support/all"




EXIT = "\q"
name = ""

people = Array.new

while name!= EXIT.downcase

  print "Enter name ('#{EXIT}' when done): "
  name = gets.chomp

  if (name.length > 0) && (name != EXIT.downcase)
    p = Person.new
    p.name = name
    print "Please enter your birth date (YYYY/MM/DD):"
    p.birthdate = gets.chomp
    people.push p

    print "First name: ", p.firstname, "\n"
    print "Last name: ",  p.lastname,  "\n"
    print "Age: ",   p.age, "\n\n"
    print "Number of People: ", Person.count, "\n\n"
  end

end

print people
