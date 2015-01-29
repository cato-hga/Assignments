#.Times

print "Hello, please choose your number: "

pick_number = gets.chomp

a = 0
pick_number.to_i.times do
 print a += 1
end
