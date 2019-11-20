class Listas


	Node = Struct.new(:value, :next, :prev)
                


	def initialize(value)
		@head = @node
		@tail = @node
	end
end
