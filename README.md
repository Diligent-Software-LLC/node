# Node ![Gem](https://img.shields.io/gem/dt/node)

Defines and implements a `Node` abstract data structure class. There is a 
`Node` class and a `Node` helper module. There are seven total methods. Four 
methods are public `Node` methods, one private `Node` method, and two helper 
methods. `Node` objects' sole attribute is a `data` object. The acceptable 
`data` objects are `String`, `Fixnum`, `Float`, `Commplex`, `Time`, `Symbol`, 
`Bignum`, and `NilClass` objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'node', '1.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install node -v 1.0.0

## Usage

There are seven methods. Four public methods, one private method, and two 
helper methods.

### Public

The four public methods are the constructor, the `data` getter method, the 
overloaded equality operator, and the `deeply_dup()` method.

#### `initialize(data = nil)`

The constructor. Takes a `data` object and sets its `data` attribute the 
object. In the case an unacceptable object type was argued, an 
`ArgumentError` raises.

#### `data()`
    
Getter method. Gets the `data` attribute's object reference and returns it.

#### `==(node)`

Overloaded equality operator. Takes a `Node` object and compares `self`'s 
`data` object and the argument's `data` object. In the case the `data` objects 
refer the same object, returns `true`. In the case the passed object is a 
`Node` object, and its `data` object refers a different object, returns 
`false`. All arguments other than a type `Node` argument raise an 
`ArgumentError`.

#### `deeply_dup()`

Deeply copies `self`. In the case the `data` attribute is a `String`, `Time`, 
or `Bignum` object, calls `dup()` on the object, and sets the deuplicate 
`Node`'s `data` attribute the consequence. In all other cases the duplicate's 
`data` object is a shallow copy. Returns the duplicate `Node` object.

### Private

The one private method is the `data` setter method.

#### `data=(object)`

Setter method. Sets the `data` attribute. In the case the argument object's 
type is unacceptable, raises an `ArgumentError`.

### Helper

The two helper methods are the `verify_data_type(data_object)` method and the 
`verify_node_object(node)` method.

#### `verify_data_type(data_object)`
   
Boolean method. In the case the argument's type excludes the acceptable types, 
raises an `ArgumentError`. Returns `true` otherwise.
    
#### `verify_node_object(node)`

Boolean method. In the case the argument's type is not `Node`, raises an 
`ArgumentError`. Otherwise returns `true`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/scientist8202/node. This project is intended to be a safe, 
welcoming space for collaboration, and contributors are expected to adhere to 
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Node project’s codebases, issue trackers, chat 
rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/scientist8202/node/blob/master/CODE_OF_CONDUCT.md).
