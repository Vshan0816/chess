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
        x, y = dir
        moves = []
    end
    
    
    
    
end