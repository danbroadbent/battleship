require './lib/input_parse'

class ShipGenerator

  def small_ship
    random = "A1D1"
    until InputParse.is_valid_placement_small?(random) == true
    random = ((65 + rand(4)).chr + (rand(4) + 1).to_s) + ((65 + rand(4)).chr + (rand(4) + 1).to_s)
    InputParse.is_valid_placement_small?(random)
    random
    end
  random
  end


end
