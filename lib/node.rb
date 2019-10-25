require "node/version"
require 'node_helper'

# Node.
# @abstract: Defines and implements a node class.
class Node

  include NodeHelper

  # initialize(data).
  # @abstract: the alternative constructor.
  # @attribute data: the node's data.
  def initialize(data = nil)
    self.data = data
  end

  # data().
  # @abstract: getter method. Gets the node's data attribute.
  def data()
    return @data
  end

  # ==(node).
  # @abstract: equality operator. Compares the node's data attribute, and in
  # the case the attribute values are equal, returns true.
  # @param node: a Node object.
  # @return: if equal, true. Otherwise, false.
  def ==(node)

    if (verify_node_object(node))
      return node.data().eql?(data())
    end

  end

  # deeply_dup().
  # @abstract: deeply copies self.
  # @return: self's deep copy.
  def deeply_dup()

    case (data().class.to_s.to_sym)
    when :String, :Time, :Bignum
      data_temp = data().dup()
    when :Fixnum, :Float, :Complex, :Symbol
      data_temp = data()
    else
      data_temp = nil
    end
    return Node.new(data_temp)

  end

  private

  # data=(object).
  # @abstract: setter method. Sets the node's data attribute.
  def data=(object)

    if (verify_data_type(object))
      return @data = object
    end

  end

end
