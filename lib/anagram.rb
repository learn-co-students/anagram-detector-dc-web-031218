class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(string)
    string.select {|w| w.chars.sort == @word.chars.sort}
  end

end
