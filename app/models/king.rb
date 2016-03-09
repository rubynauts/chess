class King < ChessPiece

	def valid_move?(endpoint_x, endpoint_y)
		if (position_x + 1) == endpoint_x || (position_y + 1) == endpoint_y
			return true
		elsif (position_x - 1) == endpoint_x || (position_y - 1) == endpoint_y
			return true
		else
			return false
		end
	end
end