class Rot13
  def rot13(secret_messages)
      secret_messages.map{|word| translate_by_word(word) }
  end

  def translate(letter)
      sa = "abcdefghijklmnopqrstuvwxyz".split('')
      index = sa.index(letter.downcase)
      return letter if index.nil?
      translated_index = index < 13 ? index + 13 : index - 13
      sa[translated_index]
  end

  def translate_by_word(word)
    words_as_array = word.split('')
    transalted_words = words_as_array.map{|letter| translate(letter)}
    transalted_words.join
  end
end

sm = "Why did the chicken cross the road?".split(' ')
# sm = ["Why"]
# puts "#{sm}"
res =Rot13.new.rot13(sm)
puts "#{res}"