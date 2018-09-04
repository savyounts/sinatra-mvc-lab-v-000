class PigLatinizer
  attr_reader :text

  def initialize (text)
    @text = text
  end

  def piglatinize
    words = text.split(" ")
    words.collect do |word|
      letters = word.split(/[aeiou]/)
      if letters[0] == (/[aeiou]/)
        letters << "way"
        letters.join
      else
        last = letters.pop
        letters << last
        letters << "way"
        letters.join
      end
    end.join(" ")
  end

end
