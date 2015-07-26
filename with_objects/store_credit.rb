class Input
  def parse
    inputs = []
    puts "enter n element"
    n = gets.to_i
    n.times do |x| 
      puts "enter credit"
      credit = gets.to_i
      puts "enter the prices"
      prices = gets.strip.split(" ").map(&:to_i)
      inputs << Store.new(credit, prices)
    end
    inputs
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
stores = input_parser.parse
stores.each do |store|
  indices = store.calculate
  puts "selected indices #{indices}"
end




