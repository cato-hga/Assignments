#Until Loop

print "Hello, please pick a number: "
 new_number = gets.chomp
  r = 1
 until r == new_number.to_i do
   print r
   r += 1
 end
