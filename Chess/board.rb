require_relative "piece"
require_relative "null_piece"
class Board
    attr_reader :null_piece, :rows
    def initialize
        @null_piece = NullPiece.instance 
        @rows = Array.new(8){Array.new(8, :N)}
        pieces
    end


    def [](pos)
        row, col = pos
        @rows[row][col] 
    end


    def []=(pos,val)
         row, col = pos
        @rows[row][col]  = val
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
        piece = [:R, :B, :Q, :H, :K, :P]
        piece.each do |ele|
            if ele == :R 
                @rows[0][0] = ele
                @rows[0][7] = ele
                @rows[7][0] = ele
                @rows[7][7] = ele
            elsif ele == :B
                @rows[0][2] = ele
                @rows[0][5] = ele
                @rows[7][2] = ele
                @rows[7][5] = ele
             elsif ele == :Q
                @rows[0][4] = ele
                @rows[7][3] = ele
             elsif ele == :H
                @rows[0][1] = ele
                @rows[0][6] = ele
                @rows[7][1] = ele
                @rows[7][6] = ele
             elsif ele == :K
                @rows[0][3] = ele
                @rows[7][4] = ele
             elsif ele == :P
                @rows[1].each {|col| col = :P}
                @rows[6].each {|col| col = :P}
             end
        end


    end

    
    def dup
    end


    def move_piece!(color, start_pos, end_pos)
    end

    def self.print_board(arr)
        arr.each {|row| puts row.join(" ")}
    end

    def print
        Board.print_board(@rows)
    end

end


 a = Board.new
 p 
