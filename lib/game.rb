require './lib/boards'
require './lib/input_parse'


class Game
  attr_reader :computer_small_ship

  def initialize
    @computer_small_ship = ""
  end

  def generate_computer_small_ship
    @computer_small_ship = "A1A2"
  end

  def start
  end

  def play
  end

end
