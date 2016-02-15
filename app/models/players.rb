class Players < ActiveRecord::Base
  belongs_to :user
  belongs_to :games

  has_many :chess_pieces

end

