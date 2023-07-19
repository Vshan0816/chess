module Slidable
    HORIZONTAL_DIRS = [[-1, 0], [1,0], [0,1], [0,-1]]
    DIAGONAL_DIRS = [[-1,-1], [-1,1], [1,-1], [1,1]]

    def move_dirs(current_pos, *moves)
        possible_moves = []
        moves.each do |move|
            move.each do |dir|
                possibles_moves << gum(current_pos, dir)
            end
        end
    end

    def gum(current_pos, dir)
        x, y = current_pos
        dx, dy = dir
        moves = []
        next_pos = [dx + x, dy + y]
        while
            #use a while loop
            #break out of if out of boundary,
            #opponent color, then stop on that square
            #same color, stop one before
            if self[next_pos] == @null_piece
                moves << next_pos
                curr_pos = next_pos
                next_pos =
                # check_valid?(end_pos) &&
                # if self.color ==
            end
        end

    end

    def check_valid?(pos)
        x, y = pos
        (x >= 0 && x < 8) && (y >= 0 && y < 8)
    end


end
