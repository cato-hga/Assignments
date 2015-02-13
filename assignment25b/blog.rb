class Blog
  attr_accessor :name, :user_name, :posts

def initialize(name)
  @posts = Array.new
  @name = name


  end
end
