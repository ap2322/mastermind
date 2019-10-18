require 'pry'
require './lib/turn'
require './lib/sequence'
require './lib/round'

filename = './results.csv'

def welcome
  puts "Welcome to MASTERMIND \n
  Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  move = gets.chomp.downcase
  evaluate(move)

end

def pick_level
  puts "To pick level of play, please enter: \n
  b for beginner (sequence of 4 with 4 colors of (r)ed, (g)reen, (b)lue,
  (y)ellow \n
  i for intermediate (sequence of 6 with 5 colors of (r)ed, (g)reen, (b)lue,
  (y)ellow, (c)ranberry \n
  a for advanced sequence of 8 with 6 colors of (r)ed, (g)reen, (b)lue,
  (y)ellow, (c)ranberry, (p)urple\n
  >"
  level = gets.chomp
  round = Round.new(level)
  start_round(round)
end

def start_round(round)
  puts "you've started a round"
end

def evaluate(input)
  if input == "p"
    puts "Let's start!"
    pick_level
  elsif input == "i"
    puts File.read('instructions.txt')
    pick_level
  elsif input == "q"
    abort "Goodbye"
  elsif input == "c"
    puts "here's your sequence you cheater"
  end
end

welcome
