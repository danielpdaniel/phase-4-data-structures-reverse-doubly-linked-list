require_relative './node'
require "pry"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    if @head && @tail
      starter_head = @head
      @head = @tail
      @tail = starter_head

      reverse_node(starter_head)
    end
  end

  def reverse_node(node)
    if node.next_node
      reverse_node(node.next_node)
    end
    next_node = node.next_node
  
    node.next_node = node.prev_node
    node.prev_node = next_node

  end

  def print_node(node)
    prev_val = node.prev_node == nil ? "nil" : node.prev_node.value
    next_val = node.next_node == nil ? "nil" : node.next_node.value
    "prev: #{prev_val}, current: #{node.value}, next: #{next_val}"

  end
end
