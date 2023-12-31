module Stepable
  KNIGHT_MOVES = [[-2, -1],[-2, 1],[-1, -2],[-1,  2],[ 1, -2],[ 1, 2],[ 2, -1],[ 2,  1]]
  KING_MOVES = [[-1, 0], [1,0], [0,1], [0,-1], [-1,-1], [-1,1], [1,-1], [1,1]]

  def move_dirs(current_pos, moves)
    possible_moves = []

        moves.each do |step|
            possible_moves += gum(current_pos, step)
        end

    possible_moves
end

  def gum(current_pos, step)
    x, y = current_pos
    dx, dy = step
    moves = []
    next_pos = [dx + x, dy + y]
      if check_valid?(next_pos)
        if self.board[next_pos].empty?
          moves << next_pos
        else
          if self.board[next_pos].color != self.board[current_pos].color
              moves << next_pos
          end
        end
      end
    moves
end


def check_valid?(pos)
  x, y = pos
  (x >= 0 && x < 8) && (y >= 0 && y < 8)
end


end
