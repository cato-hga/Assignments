#Person Class
class Person

  attr_reader :firstname
  attr_reader :lastname
  attr_accessor :birthdate

  @@count = 0

  def initialize
    @@count +=1
  end

  def name=(p)
    a = p.split
    @firstname = a[0]
    @lastname = a[1]
  end

  def age
   calculateAge
  end

  private
    def calculateAge
    bd = Date.parse(@birthdate)
    age = Date.today.year - bd.year
    age -= 1 if Date.today < bd + age.years
    return age
  end

  def self.count
    return @@count
  end

end
