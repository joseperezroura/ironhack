class King
	attr_accessor(:x, :y, :color)
    def initialize (x, y, color)
		@x = x
		@y = y
		@color = color
    end

    def can_move?(dest_x, dest_y)
    	if (@x - dest_x).abs == 1  || (@y - dest_y) == 1
    		puts "Yes"
    	else
    		puts "No"
    	end
    end
end

