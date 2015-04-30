# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"


class PigLatin
  #Constant VOWELS is an array of vowels.
  VOWELS = %w(a e i o u)
  # Defines the pigatize method. Requires text to be passed in.
  def self.pigatize(text_passed)
    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(text_passed[0])

      pigatized_text = text_passed + "way"
    else

      pigatized_text = text_passed.reverse.chop.reverse + text_passed[0] + "ay"
    end
    return pigatized_text
  end

  def self.starts_with_vowel(text_passed)
    VOWELS.include? (text_passed[0]).downcase

  end

  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  puts "Pigatized: #{PigLatin.pigatize(text)}"



  end
