class Board
    def initialize(null_piece)
        @rows = Array.new(8){Array.new(8)}
        @null_piece = null_piece
    end


    def [](pos)
        @rows[pos[0]][pos[1]]
    end


    def []=(pos,val)
        @rows[pos[0],pos[1]] = val
    end


    def move_piece(color, start_pos, end_pos)

    end


    def valid_pos?(pos)
    end


    def add_piece(piece, pos)
    end


    def checkmate?(color)
    end


    def in_check?(color)
    end


    def find_king(color)
    end


    def pieces
    end

    
    def dup
    end


    def move_piece!(color, start_pos, end_pos)
    end



end
