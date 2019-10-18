require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require 'pry'

class TurnTest < Minitest::Test
  def setup
    guess = "rrrr"
    @turn = Turn.new(guess)
  end

  def test_it_exists
    assert_instance_of Turn, @turn
  end

  def test_attributes
    assert_equal "rrrr", @turn.guess
    assert_instance_of String, @turn.sequence
  end

  def test_correct_guess

  end
end
