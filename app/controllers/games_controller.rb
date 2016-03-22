class GamesController < ApplicationController
  before_action :find_piece

  def show
  end

  def chosen_piece
    @selected_piece = ChessPiece.find(params[:chess_piece_id])
    render :show
  end
  # Games#show
  # user should be able to click on her piece.
  # page should refresh and wait for her to input where she wants to move it
  # page should refresh with either: - chosen piece at destination
  # OR error and explaination
    # chesspiece = ChessPiece.find(params[position_x, position_y])
    # if (position_x, position_y) != (endpoint_x, endpoint_y)
    #   chesspiece.update_attributes(position_x => endpoint_x, position_y => endpoint_y)
    # else
    #   return false
    # end

    private

    def find_piece
      @game = Game.includes(:chess_pieces).find(params[:id])
    end

end
