class Stack
  def initialize(size)
    @store = Array.new(size)
    @top1 = -1
    @top2 = @store.length 
  end

  def push1(value)
    if @top1 <= @top2
      @top1 += 1
      @store[@top1] = value
    end
  end

  def push2(value)
    if @top1 <= @top2
      @top2 = @top2 - 1
      @store[@top2] = value
    end
  end
  def pop1
    if @top1 >= 0
      @store.delete_at(@top1)
      @top1 -= 1 
    end 
  end
  def pop2
    if @top1 >= 0
      @store.pop
    end
  end

  def to_s
    @store
  end
end
stack = Stack.new(10)
stack.push1(2)
stack.push2(8)
stack.push2(4)
stack.push1(6)
stack.pop2
stack.pop1
puts "#{stack.to_s}"