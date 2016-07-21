require './lib/input_parse'
require './lib/boards'
require './lib/game'

boards = Boards.new
game = Game.new


  puts Messages.welcome_message
    player_response = gets.chomp.upcase
    if player_response == "Q"
      puts "you quit..."
      exit
    elsif player_response == "I"
      puts Messages.instructions
    elsif player_response == "P"
      game.start_small
    else
      puts "Please enter a 'p', 'i', or 'q'"
    end
