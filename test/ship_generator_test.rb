require './test/test_helper'
require './lib/ship_generator'

class ShipGeneratorTest < Minitest::Test

  def test_it_can_create_a_random_small_ship
    ship = ShipGenerator.new
    assert_equal "****", ship.small_ship
  end

  def test_it_can_create_a_random_small_ship_validplacement
    ship = ShipGenerator.new
    assert_equal "****" , ship.small_ship
  end

  def test_it_can_create_a_random_medium_ship_validplacement
    ship = ShipGenerator.new
    assert_equal "******" , ship.medium_ship
  end

end
