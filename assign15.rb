
#Created an array with 3 questions inside it
assign = File.readlines("questions.txt")

assign.each do |userq|
  puts userq
  user = gets.chomp
end
