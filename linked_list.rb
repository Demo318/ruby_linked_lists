##
# from the odin project

# Contains list of node objects.
class LinkedList
  def append
    # adds a new node to the end of the list
    nil
  end

  def prepend
    # adds a new node to the start of the list
    nil
  end

  def size
    # returns the total number of nodes in the list
    nil
  end

  def head
    # returns the total number of nodes in the list
    nil
  end

  def tail
    # returns the last node in the list
    nil
  end

  def at(index)
    # returns the node at the given index
    nil
  end

  def pop
    # removes the last element from the list
    nil
  end

  def contains?(value)
    # returns true if the passed in value is in the list, otherwise returns false
    nil
  end

  def find(data)
    # returns the index of the node containing data, or nil if not found
  end

  def to_s
    # represent your LinkedList objects as strings so you can print them out and
    # preview them in the console. The format should be:
    # ( data ) -> ( data ) -> ( data ) -> nil
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

  def next_node(address = nil)
    @next_node_address = address unless address.nil?
    @next_node_address
  end

end