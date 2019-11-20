class Listas                
attr_reader :head, :tail
Node = Struct.new(:value, :next, :prev)
	def initialize
		@head = nil
                @tail = nil

	end
	def insert_head(value)  
                if(@head == nil)
                        @node = Node.new(value,nil,nil)
                        @head = @node
                        @tail = @node
                else
                         @node = Node.new(value,nil,head)
                         @head.prev = @node 
                         @head = @node
                end
        end
	def insert_tail(value)  
                if(@tail == nil)
                        @node = Node.new(value,nil,nil)
                        @head = @node
                        @tail = @node
                else
                         @node = Node.new(value,tail,nil)
                         @tail.next = @node 
                         @tail = @node
                end
        end
	  def insert_head_var(value,value2)
                insert_head(value)
		insert_head(value2)
  	  end
	  def insert_tail_var(value,value2)
                insert_tail(value)
                insert_tail(value2)
          end
	  def pop_head
		if (@head == @tail)
			@head = nil
			@tail = nil
		else
			
			@head = @head.prev
			@head.next = nil
		end
	  end
	  def pop_tail
                if (@head == @tail)
                        @head = nil
                        @tail = nil
                else

                        @tail = @tail.next
                        @tail.prev = nil
                end
          end


end
