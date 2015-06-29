class Rot13
  def rot13(secret_messages)
  # your code here\
    secret_messages.map{|word| translate(word)} 
  end

  def translate(word)
    alaphabet_map = {'a' => 'n', 'b' => 'o', 'c'=> 'p', 'd'=>'q', 'e'=> 'r', 'f'=> 's', 'g'=> 't', 'h'=>'u', 'i'=> 'v', 'j'=> 'w', 'k'=> 'x', 'l'=> 'y', 'm'=>'z', 'n'=>'a', 'o'=>'b', 'p'=>'c', 'q'=>'d', 'r'=> 'e','s'=>'f', 't'=>'g','u'=>'h','v'=>'i','w'=>'j','x'=>'k','y'=>'l','z'=>'m' }
  
    words = word.split('')
    translated_words = words.map do |letter| 
      translted = alaphabet_map[letter.downcase]
      translted.nil? ? letter: translted
    end
    translated_words.join
  end
end
input = 'Why did the chicken cross the road?'
input_array =  input.split(' ') 
message = Rot13.new.rot13(input_array)
puts "#{message}"