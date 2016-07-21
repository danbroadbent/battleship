module Messages

  def self.welcome_message
    "Welcome to BATTLESHIP LITE\n(where you only get one ship...)\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?\n>"
  end

  def self.instructions
    "In BATTLESHIP, you and your opponent place ships on a grid.  The locations are unknown to each other.  The game is to take turns taking 'shots' at the other player's board until all thier ships have sunk."
  end

  def self.ship_placement_must_be_on_the_board
    "Incorrect ship placement.  The ship's coordinates must be on the board.  Please try again."
  end

  def self.ship_placement_must_be_ajacent
    "Incorrect ship placement.  The ship's coordinates must be ajacent on the board.  Please try again."
  end

  def self.ship_placement_cannot_overlap
    "Incorrect ship placement.  Ships cannot overlap each other.  Please try again."
  end

  def self.computer_ship_placement_complete
    "I have laid out my ship on the grid.\nYou now need to layout your ship.\nThe ship is two units long.\nThe grid has A1 at the top left and D4 at the bottom right.\n\nEnter the squares for the two-unit ship:"
  end

  def self.place_three_unit_ship
    "Good job!  Now place your three unit ship."
  end

  def self.board_is_set
    "Your board is now set. Please enter the coordinates for your first shot:\n"
  end

  def self.player_shot_prompt
    "Please enter the coordinates for your next shot:\n"
  end

  def self.player_shot_incorrect
    "Incorrect shot placement.  Shots must be on the board.  Please enter new shot:\n"
  end

  def self.player_shot_hit
    "Nice! Your shot was a hit, keep shooting!\n"
  end

  def self.player_shot_miss
    "Oops.  Your shot missed, try again.\n"
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
    "Uh-oh.  The computer hit your ship.  You better fire back quick!\n"
  end

  def self.comp_shot_miss
    "Phew, the computer missed your ship.  Take your next shot.\n"
  end

  def self.comp_shot_sink_small
  end

  def self.comp_shot_sink_medium
  end

  def self.comp_shot_win
    "The computer sunk your last ship"
  end

  def self.end_game_lose
    "Sorry, you lose.\n"
  end

  def self.end_game_win
    "Good job, you win.\n"
  end

  def self.end_game_winner_stats
  end

  def self.end_game_total_time
  end

end
