require 'pry'
require './lib/turn'
# require './lib/round'

filename = './results.csv'
# round1 = Round.new
#binding.pry
# def start(round)
  puts "Welcome to MASTERMIND \n
  Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  move = gets.chomp.downcase
  evaluate(move)

def evaluate(input)
  if input == "p"
    puts "Let's start!"
    # start round
  elsif input == "i"
    puts File.read('instructions.txt')
    #start round
  elsif input == "q"
    # exit the game
  elsif input == "c"
    # puts turn.seq
  end
end
