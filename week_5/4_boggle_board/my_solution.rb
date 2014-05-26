# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# create a new method create_word that takes 2 parameters
# takes the coords and finds the which letter is in the position
# adds the coordinate and joins them together to make a string

# Initial Solution

def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")  
end


# Refactored Solution
#no need for refactoring

# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? returns rad

# Reflection 
# Part 1 was pretty straight forward. After running the ruby file through terminal, we were able to figure out
# that the 2nd driver test was rad. But even without running it, and knowing that the code given to us worked, you
# can find the coordinates by yourself. There wasn't anything difficult to figure out. 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#create method get_row that holds parameters board and row
# then call the row as an array in the board
# Initial Solution

def get_row(board, row)
  board[row]
end


# Refactored Solution
#no need for refactoring


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 
# This was pretty straightforward with no real issues. 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#create method get_col
#use map method to collect elements and put them into an array

# Initial Solution

def get_col(board, col)
  board.map {|x| x[col]}
end

# Refactored Solution
#don't think we need to refactor


# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 3) == ["e", "t", "r", "e"] 

# Reflection 
# I thought that this challenge wasn't too bad. Since we worked on arrays before, it wasn'y difficult to use the
# map method again. There weren't any real issues except for just looking up on ruby docs to see how to write
# the correct syntax for map. 