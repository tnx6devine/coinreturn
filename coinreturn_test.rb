require "minitest/autorun"
require_relative "coinreturn.rb"
class TestCoinReturn < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_0_returns_an_empty_hash
		change = 0
		assert_equal({}, change_maker_3000(change))
	end


end