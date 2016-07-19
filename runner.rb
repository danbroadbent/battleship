require './lib/input_parse'
require './lib/boards'
require './lib/game'

boards = Boards.new
user_input = InputParse.new
game = Game.new

game.start
