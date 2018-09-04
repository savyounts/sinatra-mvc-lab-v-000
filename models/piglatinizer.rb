class PigLatinizer
  attr_reader :text


  def piglatinize
    words = text.split(" ")
    words.collect do |word|
      letters = word.split(/([aeiou].*)/)
      if letters[0] == ""
        letters << "way"
      else
        first = letters[1]
        last = letters[0]
        letters = [first, last]
        letters << "ay"
      end
        letters.join
    end.join(" ")
  end

end
