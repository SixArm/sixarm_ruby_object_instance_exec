require 'test/unit'
require 'sixarm_ruby_object_instance_exec'

# Original source at http://eigenclass.org/hiki.rb?bounded+space+instance_exec
class Testing < Test::Unit::TestCase

  def test_instance_exec
    # Create a block that returns the value of an argument and a value
    # of a method call to +self+.  
    block = lambda { |a| [a, f] }

    assert_equal [:arg_value, :dummy_value], 
      Dummy.new.instance_exec(:arg_value, &block)
  end

  def test_instance_exec_with_frozen_obj
    block = lambda { |a| [a, f] }

    obj = Dummy.new
    obj.freeze
    assert_equal [:arg_value, :dummy_value],
      obj.instance_exec(:arg_value, &block)
  end

  def test_instance_exec_nested
    i = 0
    obj = Dummy.new
    block = lambda do |arg|
      [arg] + instance_exec(1){|a| [f, a] }
    end

    # the following assertion expanded by the xmp filter automagically from:
    # obj.instance_exec(:arg_value, &block) #=>
    assert_equal([:arg_value, :dummy_value, 1], obj.instance_exec(:arg_value, &block))
  end
end


class Dummy
  def f
    :dummy_value
  end
end


