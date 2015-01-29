#While Loop
#Request input of a number from the user
print "Hello, please pick a number: "
#convert user number to an integer
user_input = gets.chomp


i = 1
while i <= user_input.to_i do
  print i
  i += 1
end
