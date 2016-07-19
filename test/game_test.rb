require './test/test_helper'
require './lib/game'

class GameTest < Minitest::Test

  def test_it_can_generate_small_ship_coordinates
    game = Game.new
    ship = game.generate_computer_small_ship
    assert_equal "A1A2" , ship
  end

end
