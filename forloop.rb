#For Loop
print "Hello, please choose a number: "
guest_number = gets.chomp

b = 1

for b in 1..guest_number.to_i
  print b
end
