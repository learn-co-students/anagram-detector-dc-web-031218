require 'pry'

# Your code goes here!
class Anagram
	attr_accessor :word
	def initialize(word)
		@word = word
	end

	def match(arr)
		detected = []
		arr.each do |str|
			detected.push(str) if self.word.split("").sort == str.split("").sort
		end
		detected
	end
end


# binding.pry

# puts "Hello"