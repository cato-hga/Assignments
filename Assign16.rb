#Pick a screenplay from this list, http://www.simplyscripts.com/ (in text)
#Read in the screenplay and write it to a local file

require 'net/http'

uri = URI ("http://www.scifiscripts.com/scripts/13th_floor.txt")

open ('screenplay16.txt','w') do |script|

  answer = Net::HTTP.gets(uri)

  script.puts answer

end
