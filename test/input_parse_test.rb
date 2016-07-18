require 'minitest/autorun'
require 'minitest/pride'
require './lib/input_parse'

class InputParseTest < Minitest::Test

  def test_it_can_remove_whitespace_and_case_sensitivity
    user_input = InputParse.new
    assert_equal "A1A2" , user_input.parse_whitespace_case("A1 A2")

    user_input = InputParse.new
    assert_equal "A1A2A3" , user_input.parse_whitespace_case("A1 A2 A3")
  end

  def test_it_is_the_right_length
    user_input = InputParse.new
    assert user_input.valid_length?("A1 a2")
    assert user_input.valid_length?("a2 b3 c5")
    refute user_input.valid_length?("a1")
    refute user_input.valid_length?("")
  end

  def test_placement_is_on_the_board
    user_input = InputParse.new
    assert_equal true , user_input.is_on_the_board?("a1")
    refute user_input.is_on_the_board?("a6")
  end

  def test_it_is_case_insensitive
    user_input = InputParse.new
    assert_equal "A1A2" , user_input.parse_whitespace_case("a1 A2")
  end

  def test_is_ready_for_placement_parsing
    user_input = InputParse.new
    assert_equal true , user_input.is_ready_for_placement_parse?("a1b2")
    refute user_input.is_ready_for_placement_parse?("a9")
  end

  def test_it_is_in_same_row
    user_input = InputParse.new
    assert user_input.is_in_same_row_small?("a1 A2")
    assert user_input.is_in_same_row_medium?("a1 A2 a5")
  end

  def test_it_is_ajacent_horizontally
    user_input = InputParse.new
    assert user_input.is_ajacent_horizontally_small?("a1 A2")
    assert user_input.is_ajacent_horizontally_small?("a2 A1")
    assert user_input.is_ajacent_horizontally_medium?("a1 A2 a3")
    refute user_input.is_ajacent_horizontally_small?("a1 a3")
    refute user_input.is_ajacent_horizontally_medium?("a1 a3 a5")
  end

  def test_it_is_in_same_column
    user_input = InputParse.new
    assert user_input.is_in_same_column_small?("a1 B1")
    assert user_input.is_in_same_column_medium?("a1 B1 D1")
  end

  def test_it_is_ajacent_vertically
    user_input = InputParse.new
    assert user_input.is_ajacent_vertically_small?("a1 B1")
    assert user_input.is_ajacent_vertically_small?("B1 A1")
    assert user_input.is_ajacent_vertically_medium?("a1 B1 c1")

    refute user_input.is_ajacent_vertically_small?("a1 c1")
    refute user_input.is_ajacent_vertically_medium?("a1 b1 d1")
  end

  def test_it_is_a_valid_coordinate
    user_input = InputParse.new
    assert user_input.is_valid_placement?("a1 a2")
    assert user_input.is_valid_placement?("a1 a2 A3")

    refute user_input.is_valid_placement?("a1 a3 a4")
  end

end
