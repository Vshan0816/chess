require_relative "piece"
require_relative "stepable"
class Knight < Piece
    include Stepable
    def symbol
        :H
    end

    def move_dirs(current_pos, moves)

    end

    

end