require 'pry'

# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    anagrams = []
    array.collect do |curr_word|
      if curr_word.split('').sort == word.split('').sort
        anagrams << curr_word
      end
    end
    anagrams
  end

end
