require 'minitest/autorun'
require 'minitest/pride'
require './lib/sequence'
require 'pry'

class SequenceTest < Minitest::Test
  def setup
    level = 'b'
    @new_sequence = Sequence.new(level)
  end

  def test_it_exists
    assert_instance_of Sequence, @new_sequence
  end

  def test_it_makes_beginner_sequence
    sequence = @new_sequence.seq
    assert_instance_of String, sequence
    assert_equal 4, sequence.length
    seq_contains_rgby = true if sequence[/[rgby]/]
    assert seq_contains_rgby
  end

  def test_it_makes_intermediate_sequence
    level = 'i'
    harder_seq = Sequence.new(level).seq
    assert_instance_of String, harder_seq
    assert_equal 6, harder_seq.length
    seq_contains_rgbyc = true if harder_seq[/[rgbyc]/]
    assert seq_contains_rgbyc
  end

  def test_it_makes_advanced_sequence
    level = 'a'
    hardest_seq = Sequence.new(level).seq
    assert_instance_of String, hardest_seq
    assert_equal 8, hardest_seq.length
    seq_contains_rgbycp = true if hardest_seq[/[rgbycp]/]
    assert seq_contains_rgbycp
  end
end
