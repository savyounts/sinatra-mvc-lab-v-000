class PigLatinizer
  attr_reader :text

  def initialize (text)
    @text = text
  end

  def piglatinize
    words = text.split(" ")
    words.collect do |word|
      letters = word.split(/([aeiou].*)/)
      unless letters[0] == ""
        first = letters[1]
        last = letters[0]
        letters = [first, last]
      end
        letters << "way"
        letters.join
      end
    end.join(" ")
  end

end
