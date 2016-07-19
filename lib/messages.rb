module Messsages

  def self.welcome_message
    "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  end

  def self.instructions
    "instructions"
  end

  def self.ship_placement_must_be_ajacent
    "Incorrect ship placement.  Ships coordinates must be ajacent.  Please try again."
  end

  def self.ship_placement_cannot_overlap
    "Incorrect ship placement.  Ships cannot overlap each other.  Please try again."
  end

  def self.computer_ship_placement_complete
    "I have laid out my ships on the grid.\nYou now need to layout your two ships.n\nThe first is two units long and the\nsecond is three units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the squares for the two-unit ship:"
  end

  def self.place_three_unit_ship
    "Good job!  Now place your three unit ship."
  end

  def self.player_shot_prompt
    "Please enter the coordinates for your first shot:"
  end

  def self.player_shot_hit
    "Nice! Your shot was a hit, keep shooting!"
  end

  def self.player_shot_miss
    "Oops.  Your shot missed, try again."
  end

  def self.player_shot_sink_small
  end

  def self.player_shot_sink_medium
  end

  def self.player_shot_win
  end

  def self.player_end_turn
    "Hit 'Enter' to end your turn."
  end

  def self.comp_shot_hit
  end

  def self.comp_shot_miss
  end

  def self.comp_shot_sink_small
  end

  def self.comp_shot_sink_medium
  end

  def self.comp_shot_win
  end

  def self.end_game_lose
  end

  def self.end_game_win
  end

  def self.end_game_winner_stats
  end

  def self.end_game_total_time
  end

end
