input = "this is a test"

class ReverseWords
  def initialize(input)
    @input = input 
  end

  def reverse
    splitted_words = @input.split(' ')
    length = splitted_words.length
    puts"length#{length}"
    reversed_words = []
    i = 0
    j = splitted_words.length - 1
    while i <= splitted_words.length - 1
      reversed_words[i] = splitted_words[j]
      i += 1
      j = j - 1

    end 
    puts "#{reversed_words}"
    reversed_words.join(" ")
  end
end

output = ReverseWords.new(input).reverse
puts output


#reversed_array = splitted_words.reverse
#puts "#{joint_string}"
# length = input.length
# puts"length#{length}"
#puts joint_string.is_a?(String)