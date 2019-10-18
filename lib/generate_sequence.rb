class GenerateSequence
  attr_reader :seq
  def initialize
    @seq = pick_sequence
  end


  def pick_sequence
    seq = ''
    4.times do
      seq += ["r", "g", "b", "y"].sample
    end
    seq
  end
  
end
