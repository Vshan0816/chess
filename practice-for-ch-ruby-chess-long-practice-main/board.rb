require_relative "piece"
require "byebug"
class Board


  def initialize
    @board = Array.new(8){Array.new(8)}
    # iterate through the board, at the positions to place nil
    # iterate through the board, to place each piece
    place_nil
    place_piece
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
    # debugger
    # if self[end_pos].value != nil && self[start_pos].value != nil && Board.check_valid?(end_pos)
      # debugger
      self[end_pos] = self[start_pos]
      self[start_pos] = @null_piece
    # else
    #   raise "cannot move to end position"
    # end
  end

  def self.check_valid?(pos)
    x, y = pos
    (x >= 0 && x < 8) && (y >= 0 && y < 8)
  end

  private
  @null_piece = Piece.new
  def place_nil
    (2..5).each do |x|
      (0..7).each do |y|
        @board[x][y] = Piece.new
      end
    end
  end

  def place_piece
    @board[0][0] = Piece.new(:B)
  end
end
