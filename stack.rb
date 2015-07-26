class Stack
  def initialize
    @store = []
  end
  def push(value)
    @store << value
  end
  def to_s
    @store
  end
  def size
    @store.size
  end
  def pop
    @store.pop
  end
end
stack = Stack.new
stack.push(5)
stack.push(6)
stack.push(10)

# puts stack.to_s
stack.pop
# puts stack.size

puts stack.to_s
