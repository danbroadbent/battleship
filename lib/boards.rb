require './lib/ship_generator'
require './lib/messages'
require 'pry'

class Boards
  attr_accessor :user_ships,
                :user_shots,
                :comp_ships,
                :comp_shots

  def initialize
    @user_ships = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @comp_ships = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @user_shots = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    @comp_shots = [[".","1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
  end

  def add_user_small_ship(user_input)
    @user_ships.map do |row|
      if row[0] == user_input[0] && row[0] == user_input[2]
        row[user_input[1].to_i] << "S"
        row[user_input[3].to_i] << "S"
      elsif row[0] == user_input[0]
        row[user_input[1].to_i] << "S"
      elsif row[0] == user_input[2]
          row[user_input[3].to_i] << "S"
      end
    end
      @user_ships
  end

  def add_user_medium_ship(user_input)
    @user_ships.map do |row|
      if row[0] == user_input[0] && row[0] == user_input[2] && row[0] == user_input[4]
        row[user_input[1].to_i] << "M"
        row[user_input[3].to_i] << "M"
        row[user_input[5].to_i] << "M"
      elsif row[0] == user_input[0]
        row[user_input[1].to_i] << "M"
      elsif row[0] == user_input[2]
          row[user_input[3].to_i] << "M"
      elsif row[0] == user_input[4]
          row[user_input[5].to_i] << "M"
      end
    end
      @user_ships
  end

  def add_comp_small_ship(comp_input)
    @comp_ships.map do |row|
      if row[0] == comp_input[0] && row[0] == comp_input[2]
        row[comp_input[1].to_i] << "S"
        row[comp_input[3].to_i] << "S"
      elsif row[0] == comp_input[0]
        row[comp_input[1].to_i] << "S"
      elsif row[0] == comp_input[2]
          row[comp_input[3].to_i] << "S"
      end
    end
      @comp_ships
  end

  def add_comp_medium_ship(comp_input)
    @comp_ships.map do |row|
      if row[0] == comp_input[0] && row[0] == comp_input[2]
        row[comp_input[1].to_i] << "M"
        row[comp_input[3].to_i] << "M"
        row[comp_input[5].to_i] << "M"
      elsif row[0] == comp_input[0]
        row[comp_input[1].to_i] << "M"
      elsif row[0] == comp_input[2]
          row[comp_input[3].to_i] << "M"
      elsif row[0] == comp_input[4]
          row[comp_input[5].to_i] << "M"
      end
    end
      @comp_ships
  end

  def add_user_shot(user_input)
    @comp_ships.each do |row|
      if row[0] == user_input[0] && row[user_input[1].to_i] == ""
        @user_shots.map do |row|
          if row[0] == user_input[0]
            print Messages.player_shot_miss
            row[user_input[1].to_i] << "M"
          end
        end
      elsif row[0] == user_input[0] && (row[user_input[1].to_i] == "S" || row[user_input[1].to_i] == "M")
        @user_shots.map do |row|
          if row[0] == user_input[0]
            print Messages.player_shot_hit
            row[user_input[1].to_i] << "H"
          end
        end
      end
    end
  end

end
