class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    split_words = possible_anagrams.select do |word|
      if word.split("").sort! == @word.split("").sort!
        word
      end
    end
  end
end

#mile = Anagram.new("mile")
#mile.match(%w(lime banana ryan fish))
