module NodeHelper

  # verify_data_type(data_object).
  # @abstract: in the case the argument's type is unacceptable -- types
  # excluding String, Fixnum, Float, Complex, Time, Symbol, Bignum, and
  # NilClass -- throws an ArgumentError. Otherwise, returns true.
  def verify_data_type(data_object)

    case (data_object.class.to_s.to_sym)
    when :String, :Fixnum, :Float, :Complex, :Time, :Symbol, :Bignum, :NilClass
      return true
    else
      raise ArgumentError, "#{data_object.class} is an unacceptable data type."
    end

  end

  # verify_node_object(node).
  # @abstract: in the case the argument is a Node object, returns true.
  # Otherwise, raises an ArgumentError.
  # @param node: a Node object.
  # @return: true in the case the argument is a Node object.
  def verify_node_object(node)

    case (node.class.to_s.to_sym)
    when :Node
      return true
    else
      raise ArgumentError, "#{node.class} is not a Node."
    end

  end

end