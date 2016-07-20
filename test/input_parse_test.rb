require './test/test_helper'
require './lib/input_parse'

class InputParseTest < Minitest::Test

  def test_it_can_remove_whitespace_and_case_sensitivity
    coordinates = InputParse.new("A1 a2")
    assert_equal "A1A2" , coordinates.input

    coordinates = InputParse.new("A1 a2")
    assert_equal "A1A2" , coordinates.input
  end

  def test_it_is_the_right_length
    coordinates = InputParse.new("A1 a2")
    assert coordinates.valid_length?
    coordinates = InputParse.new("a2 b3 c5")
    assert coordinates.valid_length?
    coordinates = InputParse.new("a1")
    refute coordinates.valid_length?
    coordinates = InputParse.new("")
    refute coordinates.valid_length?
  end

  def test_placement_is_on_the_board
    coordinates = InputParse.new("a1")
    assert_equal true , coordinates.is_on_the_board?
    coordinates = InputParse.new("a6")
    refute coordinates.is_on_the_board?
  end

  def test_is_ready_for_placement_parsing
    coordinates = InputParse.new("a1b2")
    assert_equal true , coordinates.ready?
    coordinates = InputParse.new("a1b2c3")
    assert_equal true , coordinates.ready?
    coordinates = InputParse.new("a1b2c3 d4")
    assert_equal false , coordinates.ready?
    coordinates = InputParse.new("a9")
    refute coordinates.ready?
  end

  def test_it_is_in_same_row
    coordinates = InputParse.new("a1 A2")
    assert_equal true , coordinates.is_in_same_row_small?
    coordinates = InputParse.new("a1a2 a3")
    assert_equal true , coordinates.is_in_same_row_medium?
    coordinates = InputParse.new("a1b2 c3")
    assert_equal false , coordinates.is_in_same_row_medium?
    coordinates = InputParse.new("a1a2 b3")
    assert_equal false , coordinates.is_in_same_row_medium?
  end

  def test_it_is_ajacent_horizontally
    coordinates = InputParse.new("a1 A2")
    assert coordinates.is_ajacent_horizontally_small?
    coordinates = InputParse.new("a2 A1")
    assert coordinates.is_ajacent_horizontally_small?
    coordinates = InputParse.new("a1 A2 a3")
    assert coordinates.is_ajacent_horizontally_medium?
    coordinates = InputParse.new("a1 a3")
    refute coordinates.is_ajacent_horizontally_small?
    coordinates = InputParse.new("a1 a3 a5")
    refute coordinates.is_ajacent_horizontally_medium?
  end

  def test_it_is_in_same_column
    coordinates = InputParse.new("a1 B1")
    assert coordinates.is_in_same_column_small?
    coordinates = InputParse.new("a1 B1 D1")
    assert coordinates.is_in_same_column_medium?
    coordinates = InputParse.new("a1 B1 D2")
    refute coordinates.is_in_same_column_medium?
  end

  def test_it_is_ajacent_vertically
    coordinates = InputParse.new("a1 B1")
    assert coordinates.is_ajacent_vertically_small?
    coordinates = InputParse.new("B1 A1")
    assert coordinates.is_ajacent_vertically_small?
    coordinates = InputParse.new("a1 B1 c1")
    assert coordinates.is_ajacent_vertically_medium?
    coordinates = InputParse.new("a1 c1")
    refute coordinates.is_ajacent_vertically_small?
    coordinates = InputParse.new("a1 b1 d1")
    refute coordinates.is_ajacent_vertically_medium?
  end

  def test_it_is_a_valid_coordinate
    coordinates = InputParse.new("a1 d2")
    assert_equal false , coordinates.is_valid_placement_small?
    coordinates = InputParse.new("a1 a2 A3")
    assert_equal true , coordinates.is_valid_placement_medium?
    coordinates = InputParse.new("A1D2")
    assert_equal false , coordinates.is_valid_placement_small?
    coordinates = InputParse.new("a1 a3 a4")
    refute coordinates.is_valid_placement_medium?
  end

end
