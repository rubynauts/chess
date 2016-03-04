class ChessPiece < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  def horizontal_move?(endpoint_x, endpoint_y)
    (position_x != endpoint_x) && (position_y === endpoint_y)
  end

  def vertical_move?(endpoint_x, endpoint_y)
    (position_y != endpoint_y) && (position_x === endpoint_x)
  end

  def horizontally_obstructed?(endpoint_x, endpoint_y)
    if endpoint_x > position_x
      ((position_x + 1)..endpoint_x).find do |x|
        game.piece_in_square?(x, endpoint_y)
      end
    else
      ((position_x - 1).downto(endpoint_x)).find do |x|
        game.piece_in_square?(x, endpoint_y)
      end
    end
  end

  def vertically_obstructed?(endpoint_x, endpoint_y)
    if endpoint_y > position_y
      ((position_y + 1)..endpoint_y).find do |y|
        game.piece_in_square?(endpoint_x, y)
      end
    else
      ((position_y - 1).downto(endpoint_y)).find do |y|
        game.piece_in_square?(endpoint_x, y)
      end
    end
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
      return 'Invalid Move'
    end
  end

end
