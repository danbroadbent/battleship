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

  def start_small
    boards = Boards.new
    boards.add_comp_small_ship(@computer_small_ship)
    puts Messages.computer_ship_placement_complete
    while true
    user_input = InputParse.new(gets.chomp)
      if user_input.is_on_the_board? == false
        puts Messages.ship_placement_must_be_on_the_board
        redo
      elsif user_input.is_valid_placement_small? == false
        puts Messages.ship_placement_must_be_ajacent
        redo
      else
        break
      end
    end
    boards.add_user_small_ship(user_input.input)
    puts Messages.board_is_set
    puts "===========\n#{boards.user_shots[0].join(" ")}\n#{boards.user_shots[1].join(" ")}\n#{boards.user_shots[2].join(" ")}\n#{boards.user_shots[3].join(" ")}\n#{boards.user_shots[4].join(" ")}\n==========="
    while true
      if boards.user_shots.flatten.join.gsub(/[.ABCDMabcd1234]/, "") == "HH"
        print Messages.end_game_win
        break
      elsif
        boards.comp_shots.flatten.join.gsub(/[.ABCDMabcd1234]/, "") == "HH"
        print Messages.comp_shot_win
        break
      end
      user_input = InputParse.new(gets.chomp)
      if user_input.input == "Q"
        exit
      elsif user_input.is_on_the_board? == false
        print Messages.player_shot_incorrect
        redo
      end
      boards.add_user_shot(user_input.input)
      puts "===========\n#{boards.user_shots[0].join(" ")}\n#{boards.user_shots[1].join(" ")}\n#{boards.user_shots[2].join(" ")}\n#{boards.user_shots[3].join(" ")}\n#{boards.user_shots[4].join(" ")}\n==========="
      boards.add_comp_shot((65 + rand(4)).chr + (rand(4) + 1).to_s)
    end
  end

end
