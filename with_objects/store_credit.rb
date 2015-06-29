class Input
  def parse
    puts "enter credit"
    credit = gets.to_i
    puts "enter the prices"
    prices = gets.strip.split(" ").map(&:to_i)
    Store.new(credit, prices)
  end
end

class Store
  def initialize(credit, prices)
    @credit = credit
    @prices = prices
  end

  def to_s
    "credit: #{@credit} , prices: #{@prices}"
  end

  def calculate
    i=0
    j=0
    length = @prices.length
    do_break = false
    while i < length
      puts "i is #{i}"
      j = i + 1
      puts "j is #{j}"
      while j < length
        if @credit == @prices[i] + @prices[j]
          do_break = true
          break
        end 
        j= j + 1
      end
      break if do_break
      i = i + 1
    end  
    [i +1 , j +1 ]  
  end
end


input_parser = Input.new
store = input_parser.parse
puts store.to_s 
indices = store.calculate
puts "selected indices #{indices}"


