class InputParse
  attr_reader :input

  def initialize(input)
    @input = input.gsub(/\s+/, "").upcase
  end

  def valid_length?
    true if @input.length == 4 || @input.length == 6
  end

  def is_on_the_board?
    true if @input.gsub(/[ABCDabcd1234]/, "") == ""
  end

  def ready?
    if is_on_the_board? == true && valid_length? == true
      true
    else
      false
    end
  end

# make sure all inputs are ready for placement

  def is_in_same_row_small?
    true if ready? == true && @input[0] == @input[2]
  end

  def is_in_same_row_medium?
    if is_in_same_row_small? == true && @input[0] == @input[4]
      true
    else
      false
    end
  end

  def is_ajacent_horizontally_small?
    true if is_in_same_row_small? == true && @input[1].to_i == @input[3].to_i + 1 || @input[1].to_i == @input[3].to_i - 1
  end

  def is_ajacent_horizontally_medium?
    true if is_ajacent_horizontally_small? == true && @input[1].to_i == @input[5].to_i + 2 || @input[1].to_i == @input[5].to_i - 2
  end

  def is_in_same_column_small?
    true if @input[1] == @input[3]
  end

  def is_in_same_column_medium?
    true if is_in_same_column_small? == true && @input[1] == @input[5]
  end

  def is_ajacent_vertically_small?
    true if is_in_same_column_small? == true && @input[0].ord == @input[2].ord + 1 || @input[0].ord == @input[2].ord - 1
  end

  def is_ajacent_vertically_medium?
    true if is_ajacent_vertically_small? == true && @input[0].ord == @input[4].ord + 2 || @input[0].ord == @input[4].ord - 2
  end

  def is_valid_placement_small?
    if is_in_same_row_small? == true && is_ajacent_horizontally_small? == true
      true
    elsif is_in_same_column_small? == true && is_ajacent_vertically_small? == true
      true
    else
      false
    end
  end

  def is_valid_placement_medium?
    if is_in_same_row_medium? == true && is_ajacent_horizontally_medium? == true
      true
    elsif is_in_same_column_medium? == true && is_ajacent_vertically_medium? == true
      true
    else
      false
    end
  end

end
