#Loop of Loop
print "Hello, please pick a number:"

new_number = gets.chomp
i = 1
loop do
  print i
  i += 1
  break if i > new_number.to_i
end
