##
# from the odin project

# Contains list of node objects.
class LinkedList
  def initialize(value = 0)
    @head_node = Node.new
    @head_node.value(value)
  end

  def append(new_value = nil)
    # adds a new node to the end of the list
    previous_tail_node = tail
    new_tail = previous_tail_node.next_node(Node.new)
    new_tail.value(new_value)
  end

  def prepend(new_value = nil)
    # adds a new node to the start of the list
    previous_head_node = head
    head(Node.new)
    head.value(new_value)
    head.next_node(previous_head_node)
  end

  def size
    # returns the total number of nodes in the list
    counter = 1
    node = head
    until node.next_node.nil?
      counter += 1
      node = node.next_node
    end
    counter
  end

  def head(head_node = nil)
    # returns the first node in the list
    @head_node = head_node unless head_node.nil?
    @head_node
  end

  def tail
    # returns the last node in the list
    node = head
    node = node.next_node until node.next_node.nil?
    node
  end

  def at(index)
    # returns the node at the given index
    node = head
    index.times { node = node.next_node }
    node
  end

  def pop
    # removes the last element from the list
    if size == 1
      @head_node = nil
    else
      node = at(size - 2)
      node.next_node('delete')
    end
  end

  def contains?(value)
    # returns true if the passed in value is in the list, otherwise returns false
    node = head
    until node.next_node.nil?
      return true if node.value == value
      node = node.next_node
    end
    false
  end

  def find(data)
    # returns the index of the node containing data, or nil if not found
    counter = 0
    node = head
    until node.next_node.nil?
      return counter if node.value == data
      node = node.next_node
      counter += 1
    end
    nil
  end

  def to_s
    # represent your LinkedList objects as strings so you can print them out and
    # preview them in the console. The format should be:
    # ( data ) -> ( data ) -> ( data ) -> nil
    node = head
    string = "( #{node.value} )"
    until node.next_node.nil?
      node = node.next_node
      string += " -> ( #{node.value} )"
    end
    string += ' -> nil'
    string
  end

  def insert_at(index)
    # that inserts the node at the given index
  end

  def remove_at(index)
    # that removes the node at the given index. (You will need to update the
    # links of your notes in the list when you remove a node.)
  end


end

class Node
  def value(data = nil)
    @node_value = data unless data.nil?
    @node_value
  end

  def next_node(new_next_node = nil)
    @next_node = new_next_node unless new_next_node.nil?
    @next_node = nil if new_next_node == "delete"
    @next_node
  end
end




