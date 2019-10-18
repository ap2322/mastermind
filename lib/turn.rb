class Turn
  attr_reader :guess, :sequence
  
  def initialize(guess)
    @guess = guess
    @sequence = pick_sequence
  end

  def pick_sequence
    seq = ''
    4.times do
      seq += ["r", "g", "b", "y"].sample
    end
    seq
  end

end
