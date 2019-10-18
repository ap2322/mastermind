require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/sequence'
require 'pry'

class TurnTest < Minitest::Test
  def setup
    guess = "rrrr"
    sequence = Sequence.new('b').seq
    @turn = Turn.new(guess, sequence)
  end

  def test_it_exists
    assert_instance_of Turn, @turn
  end

  def test_attributes
    assert_equal "rrrr", @turn.guess
  end

  def test_correct_guess
    sequence = 'rrrr'
    correct_turn = Turn.new("rrrr", sequence)
    assert_equal true, correct_turn.correct_guess?
  end

  def test_incorrect_guess
    sequence = 'grrr'
    incorrect_turn = Turn.new("rrrr", sequence)
    assert_equal false, incorrect_turn.correct_guess?
  end
end
