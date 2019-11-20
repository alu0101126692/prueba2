class Listas                
attr_reader :head, :tail
Node = Struct.new(:value, :next, :prev)
	def initialize
		@head = nil
                @tail = nil

	end
	
	
end
