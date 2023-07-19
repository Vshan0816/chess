require_relative "piece"
require_relative "slidable"
class Rook < Piece
    include Slidable

    def symbol
        return :R
      end

    def move_dirs(current_pos, *moves)


    end
end
