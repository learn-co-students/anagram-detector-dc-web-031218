# Your code goes here!
# Your class, Anagram should take a word on initialization,
# and instances should respond to a match method that takes
# an array of possible anagrams. It should return all matches
# in an array. If no matches exist, it should return an empty array.
require "pry"
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def sorted_word
    word.split("").sort
  end

  def match(string_array)
    answer = []

    all_words_stringed(string_array).each_with_index { |x, i|
      if x == sorted_word
        answer.push(string_array[i])
      end
    }
    # binding.pry
    # answer = []
    if !!answer[0]
      answer
    else
      []
    end
  end

  def all_words_stringed(string_array)
    all_words_stringed = []
    string_array.each do |word|
      all_words_stringed.push(word.split("").sort)
    end
    all_words_stringed
  end
end
