require 'minitest/autorun'
require 'minitest/pride'
require './lib/generate_sequence'
require 'pry'

class GenerateSequenceTest < Minitest::Test
  def setup
    @new_sequence = GenerateSequence.new
  end

  def test_it_exists
    assert_instance_of GenerateSequence, @new_sequence
  end

  def test_it_makes_sequence
    sequence = @new_sequence.seq
    assert_instance_of String, sequence
    seq_contains_rgby = true if sequence[/[rgby]/]
    assert seq_contains_rgby
  end
end
