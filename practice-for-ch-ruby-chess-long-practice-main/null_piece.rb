require_relative "piece"
class NullPiece < Piece
  def initialize(color = nil,board =nil, pos =nil,value=nil)
    super(color,board,pos)
    @value = value
  end


  def empty?
    true
  end

end
