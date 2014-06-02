# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
	def initialize(board)
		if board.empty?
			raise ArgumentError.new("Invalid Board")
		else
		@board = board
		end
	end

	def create_word(*coords)
		coords.map { |coord| @board[coord.first][coord.last]}.join("") 
	end

	def get_row(row)
  	@board[row].join("")
	end

	def get_col(col)
  	@board.map {|x| x[col]}.join("")
	end

end 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) # ==> returns dock

puts boggle_board.create_word([3,2])



#Driver Code
def assert
	raise "Assertion Failed" unless yield 
end

assert{boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"}





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
	raise "Assertion Failed" unless yield 
end

assert{boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"}

# 5. Reflection 
# This challenge wasn't too hard after I got a little nudge from a help of a student. I didn't really understand
# what I was supposed to do, but after a quick explanation, I was good to go. It was very similar to what we did 
# for the challenge, but we had to take out a parameter in the methods we had to create. We also had to add the
# assert method (which I don't get the point of). But other than that, this challenge was ok. It was a bit tedious
# because I felt like it was very similar to the challenge we had completed. 