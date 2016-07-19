require './lib/boards'
require './lib/input_parse'

class Game

  def start
    puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
      player_response = gets.chomp.upcase
      if player_response == "Q"
        puts "you quit"
      elsif player_response == "I"
        puts "instructions"
      elsif player_response == "P"
        puts "begin game"
      else
        puts "Please enter a 'p', 'i', or 'q'"
      end
    end

end
