class InputParse

  def parse_whitespace_case(input)
      input.gsub(/\s+\, "").upcase
    end

  def valid_length?(input)
    true if parse_whitespace_case(input).length == 4 || parse_whitespace_case(input).length == 6
  end

  def is_on_the_board?(input)
    true if parse_whitespace_case(input).gsub(/[ABCDabcd1234]/, "") == ""
  end

  def is_ready_for_placement_parse?(input)
    true if is_on_the_board?(input) && valid_length?(input)
  end

  def is_in_same_row_small?(input)
    true if parse_whitespace_case(input)[0] == parse_whitespace_case(input)[2]
  end

  def is_in_same_row_medium?(input)
    true if is_in_same_row_small?(input) == true && parse_whitespace_case(input)[0] == parse_whitespace_case(input)[4]
  end

  def is_ajacent_horizontally_small?(input)
    true if is_in_same_row_small?(input) == true && parse_whitespace_case(input)[1].to_i == parse_whitespace_case(input)[3].to_i + 1 || parse_whitespace_case(input)[1].to_i == parse_whitespace_case(input)[3].to_i - 1
  end

  def is_ajacent_horizontally_medium?(input)
    true if is_ajacent_horizontally_small?(input) == true && parse_whitespace_case(input)[1].to_i == parse_whitespace_case(input)[5].to_i + 2 || parse_whitespace_case(input)[1].to_i == parse_whitespace_case(input)[5].to_i - 2
  end

  def is_in_same_column_small?(input)
    true if parse_whitespace_case(input)[1] == parse_whitespace_case(input)[3]
  end

  def is_in_same_column_medium?(input)
    true if is_in_same_column_small?(input) == true && parse_whitespace_case(input)[1] == parse_whitespace_case(input)[5]
  end

  def is_ajacent_vertically_small?(input)
    true if is_in_same_column_small?(input) == true && parse_whitespace_case(input)[0].ord == parse_whitespace_case(input)[2].ord + 1 || parse_whitespace_case(input)[0].ord == parse_whitespace_case(input)[2].ord - 1
  end

  def is_ajacent_vertically_medium?(input)
    true if is_ajacent_vertically_small?(input) == true && parse_whitespace_case(input)[0].ord == parse_whitespace_case(input)[4].ord + 2 || parse_whitespace_case(input)[0].ord == parse_whitespace_case(input)[4].ord - 2
  end

  def is_valid_placement?(input)
    true if input.length == 4 && is_ajacent_vertically_small?(input) || is_ajacent_horizontally_small?(input) || input.length == 6 && is_ajacent_horizontally_medium?(input) || is_ajacent_vertically_medium?(input)
  end

end
