class InputParse
  attr_reader :input

  def initialize(input)
    @input = input.gsub(/\s+/, "").upcase
  end

  def valid_length?
    if @input.length == 4 || @input.length == 6
      true
    else
      false
    end
  end

  def is_on_the_board?
    if @input.gsub(/[ABCDabcd1234]/, "") == ""
      true
    else
      false
    end
  end

  def ready?
    if is_on_the_board? && valid_length?
      true
    else
      false
    end
  end

  def is_in_same_row_small?
    if ready? && @input[0] == @input[2]
      true
    else
      false
    end
  end

  def is_in_same_row_medium?
    if is_in_same_row_small? && @input[0] == @input[4]
      true
    else
      false
    end
  end

  def is_ajacent_horizontally_small?
    if is_in_same_row_small? && @input[1].to_i == @input[3].to_i + 1 || @input[1].to_i == @input[3].to_i - 1
      true
    else
      false
    end
  end

  def is_ajacent_horizontally_medium?
    if is_ajacent_horizontally_small? && @input[3].to_i == @input[5].to_i + 1 || @input[1].to_i == @input[5].to_i - 2
      true
    else
      false
    end
  end

  def is_in_same_column_small?
    if ready? && @input[1] == @input[3]
      true
    else
      false
    end
  end

  def is_in_same_column_medium?
    if is_in_same_column_small? && @input[3] == @input[5]
      true
    else
      false
    end
  end

  def is_ajacent_vertically_small?
    if is_in_same_column_small? && @input[0].ord == @input[2].ord + 1 || @input[0].ord == @input[2].ord - 1
      true
    else
      false
    end
  end

  def is_ajacent_vertically_medium?
    if is_ajacent_vertically_small? && @input[2].ord == @input[4].ord + 1 || @input[2].ord == @input[4].ord - 1
      true
    else
      false
    end
  end

  def is_valid_placement_small?
    if is_in_same_row_small? && is_ajacent_horizontally_small?
      true
    elsif is_in_same_column_small? && is_ajacent_vertically_small?
      true
    else
      false
    end
  end

  def is_valid_placement_medium?
    if is_in_same_row_medium? && is_ajacent_horizontally_medium?
      true
    elsif is_in_same_column_medium? && is_ajacent_vertically_medium?
      true
    else
      false
    end
  end

end
