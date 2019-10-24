module NodeHelper

  # verify_data_type(data_object).
  # @abstract: in the case the argument's type is unacceptable -- types
  # excluding String, Fixnum, Float, Complex, Time, Symbol, Bignum, and
  # NilClass -- throws an ArgumentError. Otherwise, returns true.
  def verify_data_type(data_object)

    case (data_object.class)
    when String, Fixnum, Float, Complex, Time, Symbol, Bignum, NilClass
      return true
    else
      raise ArgumentError, "#{data_object.class} is an unacceptable data type."
    end

  end

end