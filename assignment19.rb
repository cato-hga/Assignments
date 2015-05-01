#Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.
#Should use the same code you wrote before, but now you are extending the String class and putting the functionality in there.

class String
  #Constant VOWELS is an array of vowels.
  VOWELS = %w(a e i o u)
  # Defines the pigatize method.
  def pigatize
    # Check to see if the first letter is a vowel, if not it's a consonant
    if self[0].begins_vowel

      pigatize_word = self + "way"
    else
      pigatize_word = self.reverse.chop.reverse + self[0] + "ay"
  end

  return pigatize_word

  end

    def begins_vowel
      VOWELS.include? (self[0]).downcase
    end
end
