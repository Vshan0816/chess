require_relative "piece"
require_relative "slidable"

class Bishop < Piece
  include Slidable

  def symbol
    return :B
  end

  def move_dirs(current_pos, *moves)


  end


end
