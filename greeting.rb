class Greeting
  def hello(name)
    puts "hello #{name}"
  end
end
out =  Greeting.new.hello("madan")
puts "#{out}"