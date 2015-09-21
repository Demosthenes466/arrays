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
	


end
