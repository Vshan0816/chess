require_relative "piece"
require "byebug"
class Board

  PIECE_ARRAY=[Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

  def initialize
    @board = Array.new(8){Array.new(8)}
    # iterate through the board, at the positions to place nil
    # iterate through the board, to place each piece
    place_nil
    place_piece
    @null_piece = Piece.new
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
    if self[end_pos].value == nil && self[start_pos].value != nil && Board.check_valid?(end_pos)

      self[end_pos] = self[start_pos]
      self[start_pos] = @null_piece
    else
      raise "cannot move to end position"
    end
  end

  def self.check_valid?(pos)
    x, y = pos
    (x >= 0 && x < 8) && (y >= 0 && y < 8)
  end

  private

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

  def initial_back_row
    %i(white black).each do |color|
      if color == white
        i = 7
        PIECE_ARRAY.each_with_index do |piece, j|
          @board[i][j] = piece.new(color, self, pos=[i,j])
        end
      else

      end

    end

  end
end
