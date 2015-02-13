#Design and code a Blog and Post class.
#These classes should model a system where a user can create a blog, which will have posts.
#A Blog can have a name, a user_name, and the collection of posts
#A Post can have a name, a summary, the body of the post, the published date, and a word count.
#Since both a blog and a post MUST have a name, override the initializer so that when an object of either class is created, a name must be supplied.

require 'Date'

load 'blog.rb'
load 'post.rb'

puts ' '

puts "Let's start your new blog post..."

puts ' '

blog = Blog.new(' ')

print "What's the name of your blog?"

blog.name = gets.chomp.split.map(&:capitalize).join(' ')
print "Author Name"
blog.user_name = gets.chomp.split.map(&:capitalize).join(' ')
loop do
  post = Post.new(' ')
  print "What's the name of your post?"
  post.name = gets.chomp.split.map(&:capitalize).join(' ')
  break if post.name.empty?

  print "Start writing"
  post.body = gets.chomp
  post.word_count = post.body.split(' ').length
  post.summary = post.body.slice(0, 25) + "..."
  blog.posts.push(post)

  puts ' '
  print " This post has been completed. To add another post, start typing." \
       "Otherwise, hit the ENTER key to exit and print a summary"
  puts ' '

  end
puts ' '
puts "Exited the blog app"
puts "Here is the final overview of your blog.."
puts ' '

print  '| Blog Name:', blog.name, ' |Author: ', blog.user_name, "\n"
puts   ' '
blog.posts.each do |p|

print  ' | Post Name: ', p.name, ' | Date Published: ', p.datepublished
print  "| Summary: ", p.summary
puts   ''
print  ' | Body: ', p.body, "\n"
print  '| Word Count:', p.word_count
puts   ''

end
