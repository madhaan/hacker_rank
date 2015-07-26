class Queue
  def initialize
    @queue = []
  end
  def push(value)
    @queue.unshift(value)
  end
  def pop
    @queue.pop
  end
  def size
    @queue.size
  end
  def to_s
    @queue
  end
end  
queue = Queue.new
queue.push(10)
queue.push(30)
queue.push(50)
# puts queue.to_s
queue.pop
puts queue.to_s

