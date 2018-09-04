class PigLatinizer
  attr_reader :text

  def initialize (text)
    @text = text
  end

  def piglatinize
    words = text.split(" ")
    words.collect do |word|
      letters = word.split(/([aeiou].*)/)
      if letters[0] == ""
        letters << "ay"
      else
        first = letters[1]
        last = letters[0]
        letters = [first, last]
        letters << "way"
      end
        letters.join
    end.join(" ")
  end

end
