module Slidable
    HORIZONTAL_DIRS = [[-1, 0], [1,0], [0,1], [0,-1]]
    DIAGONAL_DIRS = [[-1,-1], [-1,1], [1,-1], [1,1]]

    def move_dirs(current_pos, *moves)
        possible_moves = []
        moves.each do |move|
            move.each do |dir|
                possible_moves += gum(current_pos, dir)
            end
        end
        possible_moves
    end

    def gum(current_pos, dir)
        x, y = current_pos
        dx, dy = dir
        moves = []
        next_pos = [dx + x, dy + y]
        while
                if !check_valid?(next_pos)
                    break
                else
                    if self.board[next_pos].empty?
                        moves << next_pos
                        current = next_pos
                        i,j = current
                        next_pos = [i + dx, j + dy]
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

    def check_valid?(pos)
        x, y = pos
        (x >= 0 && x < 8) && (y >= 0 && y < 8)
    end


end
