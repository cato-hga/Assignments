module PostsHelper
  def time
    time = Time.new
    time.to_formatted_s(:long_ordinal)
  end
end
