require_relative "piece"
require_relative "stepable"
class King < Piece
    include Stepable
    def symbol
        :K
    end

    # def move_dirs(current_pos, moves)

    # end
end
