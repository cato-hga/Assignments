class Post
  attr_accessor :name, :summary, :body, :word_count, :date_published


  def initialize(name)
    @name = name
  end

  def datepublished
    date_published = Date.today.strftime('%A, %B %d, %Y')
  end
end
