class Rook < ChessPiece

  def valid_move?(endpoint_x, endpoint_y)
    if diagonal_move?(endpoint_x, endpoint_y)
      return false
    end
    is_obstructed?(endpoint_x, endpoint_y)
  end

end