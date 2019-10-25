require "test_helper"

class NodeTest < Minitest::Test

  # setup().
  # @abstract: establishes the test variables.
  def setup()

    # @fixnum       = Fixnum(0)
    @float        = Float(0.1)
    @complex      = Complex(1)
    @time         = Time.now()
    @sym          = :sym
    @string       = "hello world"
    @node         = Node.new()
    # @fixnum_node  = Node.new(@fixnum)
    @float_node     = Node.new(@float)
    @complex_node   = Node.new(@complex)
    @time_node      = Node.new(@time)
    @symbol_node    = Node.new(@sym)
    @string_node    = Node.new(@string)
    @node_2         = Node.new()
    @float_node_2   = Node.new(@float)
    @complex_node_2 = Node.new(@complex)
    @time_node_2    = Node.new(@time)
    @symbol_node_2  = Node.new(@sym)
    @string_node_2  = Node.new(@string)

  end

  # test_atomic_data().
  # @abstract: gets the data attribute value.
  def test_atomic_data()

    assert_equal(@node.data(), nil)
    # assert_equal(@fixnum_node.data(), @fixnum)
    assert_equal(@float_node.data(), @float)
    assert_equal(@complex_node.data(), @complex)
    assert_equal(@time_node.data(), @time)
    assert_equal(@symbol_node.data(), @sym)
    assert_equal(@string_node.data(), @string)

  end

  # test_that_it_has_a_version_number().
  # @abstract: the file defined its version constant.
  def test_that_it_has_a_version_number()
    refute_nil ::Node::VERSION
  end

  # test_constructors().
  # @abstract: constructors initialization atomic types.
  def test_constructors()

    assert_instance_of(Node, @node)
    # assert_instance_of(Node, @fixnum_node)
    assert_instance_of(Node, @float_node)
    assert_instance_of(Node, @complex_node)
    assert_instance_of(Node, @time_node)
    assert_instance_of(Node, @symbol_node)
    assert_instance_of(Node, @string_node)

  end

  # test_equality_operator().
  # @abstract: node's data is equal and the objects are not eql?().
  def test_equality_operator()

    assert_equal(@node, @node_2)
    refute(@node.eql?(@node_2))
    assert_equal(@float_node, @float_node_2)
    refute(@float_node.eql?(@float_node_2))
    refute(@complex_node.eql?(@complex_node_2))
    assert_equal(@complex_node, @complex_node_2)
    refute(@time_node.eql?(@time_node_2))
    assert_equal(@time_node, @time_node_2)
    refute(@symbol_node.eql?(@symbol_node_2))
    assert_equal(@symbol_node, @symbol_node_2)

  end

  # test_unacceptable_data_types().
  # @abstract: a Range data type is unacceptable.
  def test_unacceptable_data_types()

    assert_raises(ArgumentError) {
      Node.new((0..2))
    }

  end

end
