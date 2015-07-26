class Stack
  attr_reader :store
  def initialize
    @store = []
  end
  def push(words)
    @store << words
  end
  def pop
    @store.pop
  end
  def to_s
    @store
  end
end
stack = Stack.new
words = gets.to_s.strip.split(" ")
words.each do |words|
  stack.push(words)
end
reverse_word = Stack.new
stack_size = stack.store.length
stack_size.times do |word|
  poped_words = stack.pop
  reverse_word.push(poped_words)
end
puts "reverse_word #{reverse_word.to_s}"
puts " poped word #{stack.to_s}"



