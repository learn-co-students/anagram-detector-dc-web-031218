# Your code goes here!
class Anagram

  def initialize(string)
    @string = string
  end

  def match(array)
    array.select do |element|
      element.chars.sort == @string.chars.sort
    end
  end

end
