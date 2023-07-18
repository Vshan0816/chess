require_relative "piece"

class Board
  def initialize
    @board = Array.new(8){Array.new(8)}
    # iterater thr arr
  end

  def [](pos)
    x,y = pos
    @board[x][y]
  end

  def []=(pos,val)
    x,y = pos
    @board[x][y]=val
  end

  def move_piece(start_pos, end_pos)
    if @board[start_pos]
    @board[start_pos] = end_pos

  end


end
