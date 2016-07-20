require './lib/boards'
require './lib/input_parse'
require './lib/ship_generator'


class Game
  attr_reader :computer_small_ship

  def initialize
    @computer_small_ship = ""
  end

  def generate_computer_small_ship
    @computer_small_ship = ShipGenerator.new.small_ship
  end

  def generate_computer_medium_ship
  end

  def start
  end

  def play
  end

end
