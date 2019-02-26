class Node
	attr_reader :data
	attr_accessor :next
	def initialize(data)
		@data = data
		@next = nil
	end
end

class LinkedList
	attr_accessor :head, :tail

	def initialize()
		@head = nil
		@tail = nil
	end

	def add(data)
		if !@head
			@head = Node.new(data)
			@tail = @head
		else
			@tail.next = Node.new(data)
			@tail = tail.next
		end
	end

	def get(index)
		current = @head
		count = 0
		while current != nil
			if count == index
			 current.data
			else
				current = current.next
				count+=1
			end
		end
	end

	def find(index)
		counter = 0
		current = @head

		while counter != index
			current = @head
			counter+= 1
			if counter == index
				 current
			else
				current =current.next
				count +=1
			end
			end
		end

		def add_at(index, data)
		current = @head #place all nodes in current
		(index - 1).times do #set up to current node, .times iteration
		raise "List not long enough" #index given is more than what exists, send exc msg
		if current.nil? #.nil check nil
		current = current.next #set up to current node
		end 
			new_node = Node.new(data)     #creates node
			new_node.next = current.next #sets up new tail
			current.next = new_node #set up new node as next node
		end

		def remove(index)
			if @head.index == index
				@head = @head.next
			end
		end
end
end

list = LinkedList.new
list.add(‘2’)
list.add(’24’)
list.add(’37’)
list.add(‘Dulce’)
list.add(‘1975’)
list.add_at(1,’Eli’)
list.remove(1)

def do_stuff(a, b)
	if a == -9
			@list.add(b)
	elsif a == -6
			puts @list.get(b)
	end
end