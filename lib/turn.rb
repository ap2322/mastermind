class Turn
  attr_reader :guess

  def initialize(guess, sequence)
    @guess = guess.downcase
    @sequence = sequence
  end

  def correct_guess?
    return true if @guess == @sequence
    false
  end
end
