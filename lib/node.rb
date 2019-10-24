require "node/version"

# Node.
# @abstract: Defines and implements a node class.
class Node

  # initialize(data).
  # @abstract: the alternative constructor.
  # @attribute data: the node's data.
  def initialize(data = nil)
    if (!(data.nil? || data.class == String || data.class == Fixnum ||
        data.class == Float || data.class == Complex ||
        data.class == Time || data.class == Symbol || data.class == Bignum))
      raise ArgumentError, "#{data.class} is an unacceptable data type."
    else
      self.data = data
    end
  end

  # data().
  # @abstract: getter method. Gets the node's data attribute.
  def data()
    return @data
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

  # assign(node).
  # @abstract: deeply copy the argued node and assign self the deeply duped data.
  # @param node: a Node instance object.
  # @return: nil.
  def assign(node)
    if (!node.instance_of?(Node))
      raise ArgumentError, "#{node.class} is not a Node instance."
    end
    self.data = node.data()
  end

  # data=(object).
  # @abstract: setter method. Sets the node's data attribute.
  def data=(object)
    if (!(data.nil? || data.class == String || data.class == Fixnum ||
        data.class == Float || data.class == Complex ||
        data.class == Time || data.class == Symbol || data.class == Bignum))
      raise ArgumentError, "#{data.class} is an unacceptable data type."
    else
      @data = object
    end
  end

  # copy(node).
  # @abstract: creates a node and assigns the data attribute the argued node's
  # data attribute.
  # @return: the copy.
  def copy_self()
    return Node.new(data())
  end

end
