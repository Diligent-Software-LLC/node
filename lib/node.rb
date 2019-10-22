require "node/version"

# Node.
# @abstract: Defines and implements a node class.
class Node

  # initialize().
  # @abstract: the default constructor.
  # @attribute data: the node data.
  def initialize()
    self.data = nil
  end

  # initialize(data).
  # @abstract: the alternative constructor.
  # @attribute data: the node's data.
  def initialize(data)
    if (!(data.class == String || data.class == Fixnum || data.class == Float ||
        data.class == Complex || data.class == Time || data.class == Symbol ||
        data.class == Bignum))
      raise ArgumentError, "#{data.class} is an unacceptable data type."
    else
      self.data = data
    end
  end

  # data().
  # @abstract: getter method. Gets the node's data attribute.
  def data()
    if (@data.class == Bignum || @data.class == String || @data.class === Time)
      return @data.dup()
    else
      return @data
    end
  end

  # data-(object).
  # @abstract: setter method. Sets the node's data attribute.
  def data=(object)
    if (!(data.class == String || data.class == Fixnum || data.class == Float || data.class == Complex || data.class == Time || data.class == Symbol || data.class == Bignum))
      raise ArgumentError, "#{data.class} is an unacceptable data type."
    else
      @data = object
    end
  end

  # ==(node).
  # @abstract: equality operator. Compares the node's data attribute, and in the case the attribute values are equal, returns true.
  # @param node: a Node object.
  # @return: if equal, true. Otherwise, false.
  def ==(node)
    if (!node.instance_of?(Node))
      raise ArgumentError, "#{node.class} is not a Node instance."
    end
    return node.data().eql?(data())
  end

  # deeply_dup(node).
  # @abstract: deeply copies the passed node.
  # @return: the copy.
  def deeply_dup(node)
    return Node.new(node.data())
  end

  # assign_node(node).
  # @abstract: deeply copy the argued node and assign self the deeply duped data.
  # @param node: a Node instance object.
  # @return: nil.
  def assign_node(node)
    if (!node.instance_of?(Node))
      raise ArgumentError, "#{node.class} is not a Node instance."
    end
    copy      = deeply_dup(node)
    self.data = copy.data()
  end

end
