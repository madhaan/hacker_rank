class  Node
  attr_accessor :vertice, :name
  def initialize(vertice, name)
    @vertice = vertice
    @name = name
  end
end

node = Node.new(1, 'hello')
puts node.name
puts node.vertice
node.name = 'world'
puts node.name
puts node.methods.sort