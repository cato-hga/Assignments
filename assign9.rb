#Take the string "Hello World" and split it on whitespace. Show two ways to do this.

print "Hello World".split(' ')
print "Hello World".split(/ /)

#Use the Peter Piper tongue twister and split it on 'pick'

print "Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers Peter Piper picked?".split("pick")

#Use gsub only to change the first passage to the second in the fewest amount of commands:
#Original: "You have brains in your head. You have feet in your shoes.
#You can steer yourself any direction you choose.
#You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

#Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose.
#I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

original = "You have brains in your head. You have feet in your shoes. You can steer yourself
any direction you choose. You're on your own. And you know what you know.
And YOU are the one who'll decide where to go..."

print original.gsub!('your', 'my')
print original.gsub!('You', 'I')
print original.gsub!("you're ", "I'm ")
print original.gsub!("You're ", "I'm ")
print original.gsub!("YOU are", "I'm ")
print original.gsub!("you ", "I ")

#Write code to determine how many times 'sh' occurs in the following phrase:

#There once was a man who had a sister, his name was Mr. Fister.
#Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells,
#he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks.
#The sister of Mr. Fister said I sold six shells to six shieks too!


hello = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister
sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk
sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks.
The sister of Mr. Fister said I sold six shells to six shieks too!"
# .scan is scanning how many time sh is showing in this paragraph
puts "In this paragraph 'sh' has come up ", "#{hello.scan(/sh/).count}" " times."

#In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.

puts "In the same paragraph, when followed by an o sh has come up ", "#{hello.scan(/sho/).count}" "time."

#Match the word foot but not football in this phrase: "He played football despite having an artificial foot."

foot = "He played football despite having an artificial foot."

puts "The word " "#{foot.match(/(?<=artificial )foot/)}" " is showing 1 time in this sentence."

#Match the last sits in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop.
#Where she sits she shines, and where she shines she sits."

last_section = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

puts "#{last_section.match(/(?<=shines she )sits/)}"
