require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal "oa", @m.middles("dog","cat")
		assert_equal "aa", @m.middles("Fat","Bat")
		assert_equal "iy", @m.middles("Fig","Dye")
	end

	def test_max
		assert_equal 4, @m.max([1,2,3,4])
		assert_equal 1, @m.max([1,-2,-3,-4])
	end

	def test_lucky13?
		assert_equal false, @m.lucky13?([1,2,3])
		assert_equal false, @m.lucky13?([1,2,2])
		assert_equal false, @m.lucky13?([2,2,3])
		assert_equal true, @m.lucky13?([2,2,2])
	end
	
	def test_repeat_seperator
		assert_equal "ThisAndThis", @m.repeat_seperator("This", "And", 2)
		assert_equal "ThisAndThisAndThis", @m.repeat_seperator("This", "And", 3)
		assert_equal "This", @m.repeat_seperator("This", "And", 1)
	end

	def test_same_ends?
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 2)
		assert_equal false, @m.same_ends?([5, 6, 45, 99, 23, 5, 6], 3)
		assert_equal true, @m.same_ends?([5, 6, 45, 99, 5, 6, 45], 3)
	end

	def test_starry?
		assert_equal true, @m.starry?("a*a")
		assert_equal false, @m.starry?("a*b")
		assert_equal false, @m.starry?("a*a*b")
	end

	def test_plus_it
		assert_equal "+at", @m.plus_it("cat", "at")
		assert_equal "++at", @m.plus_it("that", "at")
		assert_equal "+++", @m.plus_it("dog", "at")
	end

	def test_zero_front
		assert_equal [0, 0, 5, 3, 1, 6], @m.zero_front([5, 0, 3, 1, 0, 6])
		assert_equal [0, 5, 4, 3, 1, 6], @m.zero_front([5, 4, 3, 1, 0, 6])
		assert_equal [0, 0, 0, 0, 0, 5], @m.zero_front([5, 0, 0, 0, 0, 0])
		assert_equal [0, 0, 0, 0, 0, 0], @m.zero_front([0, 0, 0, 0, 0, 0])
	end


end
