 b = rand(1..7)
 boy = 0
 x = 0

until boy == b do
  puts "Hello, please pick the correct number"
  boy = gets.chomp.to_i

  if boy < b
    puts "Too low of a number"
  end

  if boy > b
    puts "Too High"

  end

  if boy == b
    puts "Correct!"

  end

  puts x += 1

end
