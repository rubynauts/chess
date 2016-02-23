class ChessPiece < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  def horizontal_move?(endpoint_x, endpoint_y)
    (position_x != endpoint_x) && (position_y === endpoint_y)
  end

  def vertical_move?(endpoint_x, endpoint_y)
    (position_y != endpoint_y) && (position_x === endpoint_x)
  end

  def diagonal_move?(endpoint_x, endpoint_y)
    (position_x != endpoint_x) && (position_y != endpoint_y)
  end

  def is_obstructed?(endpoint_x, endpoint_y)
    if horizontal_move?(endpoint_x, endpoint_y)
      return horizontally_obstructed?(endpoint_x, endpoint_y)
    elsif vertical_move?(endpoint_x, endpoint_y)
      return vertically_obstructed?(endpoint_x, endpoint_y)
    elsif diagonal_move?(endpoint_x, endpoint_y)
      return diagonally_obstructed?(endpoint_x, endpoint_y)
    else
      return 'Invalid'
    end
  end

end
