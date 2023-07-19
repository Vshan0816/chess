require_relative "piece"
require_relative "bishop"
require_relative "king"
require_relative "knight"
require_relative "pawn"
require_relative "queen"
require_relative "rook"
require_relative "null_piece"
require "byebug"

PIECE_ARRAY=[Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]


class Board
  attr_accessor :null_piece
  def initialize
    @null_piece = NullPiece.new(color=nil, self, pos=nil)
    @board = Array.new(8){Array.new(8, @null_piece) }
    # iterate through the board, at the positions to place nil
    # iterate through the board, to place each piece
    # place_nil
    # place_piece
    initialize_rows
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
    if self[end_pos] == @null_piece && self[start_pos] != @null_piece && Board.check_valid?(end_pos)

      self[end_pos] = self[start_pos]

      self[start_pos] = @null_piece
      self[end_pos].pos = end_pos
    else
      raise "cannot move to end position"
    end
  end

  def self.check_valid?(pos)
    x, y = pos
    (x >= 0 && x < 8) && (y >= 0 && y < 8)
  end

  private

  # def place_nil
  #   (2..5).each do |x|
  #     (0..7).each do |y|
  #       @board[x][y] = Piece.new(color=nil, self, pos=[x,y])
  #     end
  #   end
  # end

  # def place_piece
  #   @board[0][0] = Piece.new(:B)
  # end

  def initialize_rows

    %i(white black).each do |color|
      if color == :white
        i = 7
        PIECE_ARRAY.each_with_index do |piece, j|
            @board[i][j] = piece.new(color, self, pos=[i,j])
        end
        i -= 1
        (0..7).each do |j|
          @board[i][j] = Pawn.new(color, self, pos=[i,j])
        end
      else
          i = 0
          PIECE_ARRAY.each_with_index do |piece, j|
            @board[i][j] = piece.new(color, self, pos=[i,j])
          end
          i += 1
          (0..7).each do |j|
            @board[i][j] = Pawn.new(color, self, pos=[i,j])
          end
      end
    end
  end
end
