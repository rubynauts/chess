class Pawn < ChessPiece

	def valid_move?(endpoint_x, endpoint_y)
		if vertical_move?(endpoint_x, endpoint_y)
			if self.color == "White"
				return position_y == 1 && endpoint_y <= 3 || endpoint_y == position_y + 1
			else
				return position_y == 6 && endpoint_y >= 4 || endpoint_y == position_y - 1
			end
		else
			return false
		end
	end

end