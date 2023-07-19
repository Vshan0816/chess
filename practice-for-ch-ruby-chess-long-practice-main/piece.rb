# require_relative "bishop"
# require_relative "king"
# require_relative "knight"
# require_relative "pawn"
# require_relative "queen"
# require_relative "rook"
# require_relative "null_piece"


class Piece

  #color ivar should hold a symbol, blackwhite
  #when we initialize we need to set the symbol, board instance, position
  #ivar for board
  #ivar for position, starting position
  attr_accessor :color, :board, :pos
  def initialize(color = nil,board =nil, pos =nil)
    @color = color
    @board = board
    @pos=pos

  end

  def empty?
    false
  end
end
