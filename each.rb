# Assignment 8
print "Hello, please choose a number: "

number = gets.chomp


(1..number.to_i).each do |z|
  print "#{z}"
end
