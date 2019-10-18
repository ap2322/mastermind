require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/sequence'
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
  end

end
