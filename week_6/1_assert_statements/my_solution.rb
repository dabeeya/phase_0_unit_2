# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# defining assert
# first assert is true because name equals bettysue
# the second assert comes out false because billybob does not equal name
# so raise error message 


# 3. Copy your selected challenge here
class Boggle

	def create_word(board, *coords)
  	coords.map { |coord| board[coord.first][coord.last]}.join("")  
	end

	def get_row(board, row)
  	board[row]
	end

	def get_col(board, col)
  	board.map {|x| x[col]}
	end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

boggle_board = Boggle.new boggle_board = ([["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]])


assert {boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" }

assert { boggle_board.get_col(0) == ["b", "i", "e", "t"] }


# 5. Reflection
# I didn't find this challenge to be too difficult but I also seem to be having a difficult understanding the 
# point of the assert method. But it was too difficult trying to change the driver test code. 