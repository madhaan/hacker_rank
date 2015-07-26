class Calculate
  def number(input)
    value = input.addition
    puts "sum of entered no is = #{value}"
  end
end
puts "enter two numbers"
n = gets.strip.split(" ")
integer = Calculate.new.number(n)
