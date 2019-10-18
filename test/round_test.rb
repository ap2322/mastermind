require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/sequence'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def setup
    @beginner_round = Round.new('b')
    @intermediate_round = Round.new('i')
    @advanced_round = Round.new('a')
  end

  def test_it_exists
    assert_instance_of Round, @beginner_round
    assert_instance_of Round, @intermediate_round
    assert_instance_of Round, @advanced_round
  end

  def test_attributes_at_init
    assert_instance_of String, @beginner_round.sequence
    assert [], @beginner_round.turns
  end

  def test_take_turn
    new_turn = @beginner_round.take_turn('rggb')
    assert_instance_of Turn, new_turn
  end

  def test_turns_array
    @beginner_round.take_turn("rggb")
    assert_equal 1, @beginner_round.turns.length
  end
  #
  # def test_number_correct_collection
  #   @round.take_turn("Juneau")
  #   @round.take_turn("WAZZAP")
  #   @round.take_turn("North north west")
  #   @round.take_turn("John Rock")
  #
  #   assert_equal 3, @round.number_correct
  #
  # end
end
