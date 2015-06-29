class BigSum
  def sum
    n = gets.to_i
    puts "you enteres n as #{n}"
    lis = gets.strip.split(" ")
    puts "#{lis}"
    sum = 0
    lis.each_with_index do |element, index|
      puts "index #{index}"
      puts "hello" 
      sum += element.to_i 
      puts "#{sum}"
    end
  end
end
tottle_sum = BigSum.new.sum
puts "#{tottle_sum}"

arr = [2,3,4,5,6,7]
arr.reject {|a| a/3 == 0}
puts"#{arr}"