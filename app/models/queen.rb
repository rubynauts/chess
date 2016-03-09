class Queen < ChessPiece

	def valid_move?(endpoint_x, endpoint_y)
		if vertical_move?(endpoint_x, endpoint_y)
			return true
		elsif horizontal_move?(endpoint_x, endpoint_y)
			return true
		elsif diagonal_move?(endpoint_x, endpoint_y)
			return true
		else
			return false
		end
	end
end