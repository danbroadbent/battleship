require 'minitest/autorun'
require 'minitest/pride'
require './lib/boards'

class Boards_Tests < Minitest::Test

  def test_it_has_user_ship_board
    boards = Boards.new
    expected = [[".", "1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.user_ships
  end

  def test_it_has_comp_ship_board
    boards = Boards.new
    expected = [[".", "1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.comp_ships
  end

  def test_it_has_user_shots_board
    boards = Boards.new
    expected = [[".", "1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.user_shots
  end

  def test_it_has_comp_shots_board
    boards = Boards.new
    expected = [[".", "1","2","3","4"],["A","","","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.comp_shots
  end

  def test_it_can_add_user_small_ship
    boards = Boards.new
    expected = [[".","1","2","3","4"],["A","X","X","",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.add_user_small_ship("A1A2")

    boards = Boards.new
    expected = [[".","1","2","3","4"],["A","","","",""],["B","X","X","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.add_user_small_ship("B1B2")

    boards = Boards.new
    expected = user_ships = [[".","1","2","3","4"],["A","","","",""],["B","X","","",""],["C","X","","",""],["D","","","",""]]
    assert_equal expected , boards.add_user_small_ship("B1C1")
  end

  def test_it_can_add_user_medium_ship
    boards = Boards.new
    expected = [[".","1","2","3","4"],["A","X","X","X",""],["B","","","",""],["C","","","",""],["D","","","",""]]
    assert_equal expected , boards.add_user_medium_ship("A1A2A3")
  end

  def test_it_can_add_computer_small_ship
  end

end
