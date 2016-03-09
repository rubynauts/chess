class Knight < ChessPiece
  
  def valid_move?(endpoint_x, endpoint_y)
    if ((endpoint_x - position_x).abs + (endpoint_y - position_y).abs) == 3
      return true
    else
      return false
    end
  end

end