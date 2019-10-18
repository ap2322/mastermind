class Round
  attr_reader :sequence, :turns
  def initialize(level)
    @sequence = Sequence.new(level).seq
    @turns = []
  end

  def take_turn(guess)
    turn_with_guess = Turn.new(guess, sequence)
    @turns << turn_with_guess
    return turn_with_guess
  end
end
