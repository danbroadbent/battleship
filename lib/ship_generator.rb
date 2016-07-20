require './lib/input_parse'

class ShipGenerator

  def small_ship
    random_small_coordinates = ((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s)
    small_ship = InputParse.new(random_small_coordinates)
    until small_ship.is_valid_placement_small? == true
      if small_ship.is_valid_placement_small? == false
        random_small_coordinates = ((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s)
        small_ship = InputParse.new(random_small_coordinates)
      end

    end
    small_ship.input
  end

  def medium_ship
    random_medium_coordinates = ((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s + (65 + rand(4)).chr + (rand(4) + 1).to_s)
    medium_ship = InputParse.new(random_medium_coordinates)
    until medium_ship.is_valid_placement_medium? == true
      if medium_ship.is_valid_placement_medium? == false
        random_medium_coordinates = ((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s + (65 + rand(4)).chr + (rand(4) + 1).to_s)
        medium_ship = InputParse.new(random_medium_coordinates)
      end

    end
    medium_ship.input
  end

end
