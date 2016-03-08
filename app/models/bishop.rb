class Bishop < ChessPiece

  def valid_move?(endpoint_x, endpoint_y)
    if diagonal_move?(endpoint_x, endpoint_y)
      return true
    else
      return false
    end
  end

end