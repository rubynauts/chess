class Pawn < ChessPiece

	def valid_move?(endpoint_x, endpoint_y)
		if vertical_move?(endpoint_x, endpoint_y)
			return true if position_y == 1 && endpoint_y <= 3
			return true if endpoint_y == position_y + 1
		else
			return false
		end
	end
end