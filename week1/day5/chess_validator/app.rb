# app.rb

require_relative("lib/pieces/rook.rb")
require_relative("lib/pieces/king.rb")
require_relative("lib/pieces/knight.rb")
require_relative("lib/pieces/bishop.rb")
require_relative("lib/pieces/queen.rb")
require_relative("lib/pieces/pawn.rb")
require_relative("lib/pieces/board.rb")

# /---------------------------------------------------------
#  ------------------------- ROOK --------------------------
#  ---------------------------------------------------------/

black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")


# puts "Valid Rook movements"
# puts "--------------------"

# p black_rook_left.can_move?(1, 5) == "yes"
# p black_rook_left.can_move?(5, 8) == "yes"
# p white_rook_right.can_move?(8, 3) == "yes"
# p white_rook_right.can_move?(2, 1) == "yes"


# # # puts "Invalid Rook movements"
# # # puts "----------------------"

# p black_rook_left.can_move?(2, 7) == "no"
# p black_rook_left.can_move?(2, 5) == "no"
# p white_rook_right.can_move?(3, 5) == "no"
# p white_rook_right.can_move?(5, 6) == "no"


# # # /---------------------------------------------------------
# # #  ------------------------- KING --------------------------
# # #  ---------------------------------------------------------/

black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")


# # puts "Valid King movements"
# # puts "--------------------"

# p black_king.can_move?(5, 7) == "yes"
# p black_king.can_move?(6, 7) == "yes"
# p white_king.can_move?(6, 2) == "yes"
# p white_king.can_move?(5, 2) == "yes"
# p white_king.can_move?(4, 1) == "yes"


# # # puts "Invalid King movements"
# # # puts "----------------------"

# p black_king.can_move?(5, 4) == "no"
# p black_king.can_move?(7, 5) == "no"
# p white_king.can_move?(7, 2) == "no"
# p white_king.can_move?(1, 5) == "no"
# p white_king.can_move?(1, 1) == "no"

# # /---------------------------------------------------------
# #  ------------------------- Bishop --------------------------
# #  ---------------------------------------------------------/


black_bishop_left = Bishop.new(3, 1, "black")
black_bishop_right = Bishop.new(6, 8, "black")
white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
# p black_bishop_left.can_move?(3, 3) == "yes"

# # # /---------------------------------------------------------
# # #  ------------------------- Knights --------------------------
# # #  ---------------------------------------------------------/

black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
# p black_knight_left.can_move?(4, 2) == "yes"

# # # /---------------------------------------------------------
# # #  ------------------------- Queen --------------------------
# # #  ---------------------------------------------------------/

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")
# p black_queen.can_move?(4, 2) == "yes"


# # # /---------------------------------------------------------
# # #  ------------------------- Pawn ----------------------------
# # #  ---------------------------------------------------------/

black_pawn_one = Pawn.new(1, 7, "black")
black_pawn_two = Pawn.new(2, 7, "black")
black_pawn_three = Pawn.new(3, 7, "black")
black_pawn_four = Pawn.new(4, 7, "black")
black_pawn_five = Pawn.new(5, 7, "black")
black_pawn_six = Pawn.new(6, 7, "black")
black_pawn_seven = Pawn.new(7, 7, "black") 
black_pawn_eight = Pawn.new(8, 7, "black")

white_pawn_one = Pawn.new(1, 2, "white")
white_pawn_two = Pawn.new(2, 2, "white")
white_pawn_three = Pawn.new(3, 2, "white")
white_pawn_four = Pawn.new(4, 2, "white")
white_pawn_five = Pawn.new(5, 2, "white")
white_pawn_six = Pawn.new(6, 2, "white")
white_pawn_seven = Pawn.new(7, 2, "white") 
white_pawn_eight = Pawn.new(8, 2, "white")





# white_pawn = Pawn.new(1, 2, "white")
# p black_pawn.can_move?(1, 5) == "yes"
# p white_pawn.can_move?(1, 1) == "no"


 
myboard = Board.new
myboard.add_piece(black_knight_left)
myboard.add_piece(black_knight_right)

p black_knight_left.can_move?(4, 2) == "no"




