class Sequence
  attr_reader :seq
  def initialize(level)
    @seq = pick_sequence(level)
  end

  def pick_sequence(level)
    if level == "b"
      seq = ''
      4.times do
        seq += ["r", "g", "b", "y"].sample
      end
      seq
    elsif level == "i"
      seq = ''
      6.times do
        seq += ["r", "g", "b", "y", "c"].sample
      end
      seq
    elsif level == 'a'
      seq = ''
      8.times do
        seq += ["r", "g", "b", "y", "c", "p"].sample
      end
      seq
    end
  end
end
