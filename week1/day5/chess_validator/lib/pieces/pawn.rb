class Pawn  
    attr_accessor(:x, :y, :color)
    def initialize (x, y, color)
        @x = x
        @y = y
        @color = color
        @num_moves = 0
    end
    
    def can_move?(dest_x, dest_y)            
        if @color == "black"
           if (dest_y - @y ==  -2 || dest_y - @y ==  -1) && (dest_x - @x == 0) 
                "yes"
                else "no"
           end
        elsif @color == "white"
            if (dest_y - @y ==  2 || dest_y - @y ==  1) && (dest_x - @x == 0) 
                "yes"
                else "no"
            end        
                        
        end
    end                    
end
