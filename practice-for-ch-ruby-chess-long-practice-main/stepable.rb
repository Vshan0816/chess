module Stepable
  KNIGHT_MOVES = [[-2, -1],[-2, 1],[-1, -2],[-1,  2],[ 1, -2],[ 1, 2],[ 2, -1],[ 2,  1]]
  PAWN_WHITE = [[-1,0]]
  PAWN_BLACK = [[1,0]]

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
    while
      if !check_valid?(next_pos)
        break
      else
        if self.board[next_pos].empty?
          moves << next_pos

        else
          if self.board[next_pos].color == self.board[current_pos].color
              break
          else
              moves << next_pos
              break
          end
        end
      end

    end
    moves
end


end
