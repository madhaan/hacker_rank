class BigSum
  def sum(value)
    sum = 0
    value.each_with_index do |element, index|
      sum += element.to_i 
    end
    sum
  end
end
class Input
  def parse
    n = gets.to_i
    puts "you enteres n as #{n}"
    numbers = gets.strip.split(" ")
    n_numbers = numbers.take(n)
    puts "#{n_numbers}"
    n_numbers
  end
end
value = Input.new.parse
big_sum = BigSum.new.sum(value)
puts "total sum  #{big_sum}"


































