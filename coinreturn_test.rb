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

	def test_assert_that_1_returns_a_penny
		change = 1
		assert_equal({:penny => 1}, change_maker_3000(change))
	end

	def test_assert_that_5_returns_a_nickel
		change = 5
		assert_equal({:nickel => 1}, change_maker_3000(change))
	end

	def test_assert_that_9_returns_a_nickel_and_4_pennies
		change = 9
		assert_equal({:nickel => 1, :penny => 4}, change_maker_3000(change))
	end

	def test_assert_that_10_returns_a_dime
		change = 10
		assert_equal({:dime => 1}, change_maker_3000(change))
	end

	def test_assert_that_quarters_are_returned
		change = 63
		assert_equal({:quarter => 2, :dime => 1, :penny => 3}, change_maker_3000(change))
	end

	def test_assert_that_dollars_are_returned_and_all_coins
		change = 166
		assert_equal({:dollar => 1, :quarter => 2, :dime => 1, :nickel => 1, :penny => 1}, change_maker_3000(change))
	end


end