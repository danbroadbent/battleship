require './lib/boards'
require './lib/input_parse'
require './lib/ship_generator'
require './lib/messages'


class Game

  def initialize
    @computer_small_ship = ShipGenerator.new.small_ship
    @computer_medium_ship = ShipGenerator.new.medium_ship
  end

  def generate_computer_small_ship
    @computer_small_ship
  end

  def generate_computer_medium_ship
    @computer_medium_ship = ShipGenerator.new.medium_ship
  end

  def start
    boards = Boards.new
    boards.add_comp_small_ship(@computer_small_ship)
    boards.add_comp_medium_ship(@computer_medium_ship)
    puts Messages.computer_ship_placement_complete
    user_input = InputParse.new(gets.chomp)
    boards.add_user_small_ship(user_input.input)
    puts Messages.place_three_unit_ship
    user_input = InputParse.new(gets.chomp)
    boards.add_user_medium_ship(user_input.input)
    puts Messages.board_is_set
    puts "===========\n#{boards.user_shots[0].join(" ")}\n#{boards.user_shots[1].join(" ")}\n#{boards.user_shots[2].join(" ")}\n#{boards.user_shots[3].join(" ")}\n#{boards.user_shots[4].join(" ")}\n==========="
    while true
      user_input = InputParse.new(gets.chomp)
      if user_input.input == "Q"
        exit
      end
      boards.add_user_shot(user_input.input)
      puts "===========\n#{boards.user_shots[0].join(" ")}\n#{boards.user_shots[1].join(" ")}\n#{boards.user_shots[2].join(" ")}\n#{boards.user_shots[3].join(" ")}\n#{boards.user_shots[4].join(" ")}\n==========="
    end
  end

end
