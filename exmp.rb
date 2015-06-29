class Greeting
  def hello(name)
    puts "hello #{name}"
  end
end

class InputParser
  def parse 
    gets
  end
end
name = InputParser.new.parse
puts "printing input #{name}"
puts  Greeting.new.hello(name)