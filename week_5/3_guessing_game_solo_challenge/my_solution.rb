# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	@solved = false 
  end

	def guess(guess)
  	if guess > @answer
  		@solved = false
  		:high
  	elsif guess < @answer
  		@solved = false
  		:low
  	elsif guess == @answer
  		@solved = true
  		:correct
  	end
  end

  def solved?
  	@solved
  end
end


  
  # Make sure you define the other required methods, too



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
