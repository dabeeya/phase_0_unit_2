# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:
# create class GuessingGame
# initialize that holds a parameter of answer and create instance variables 
# create method guess and put in if statements for when answers are too high, too low or correct
# create method solved? that prints out the final answer

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
# no need to refactor





# 1. DRIVER TESTS GO BELOW THIS LINE
#game = GuessingGame.new (8)

#p "solved? returns false before a guess is made"
#p g.solved? == false

#p "guess returns :high when the guess is too high"
#p g.guess(10) == :high



# 5. Reflection 
# This challenge was a little bit more difficult because I got stuck using symbols. I'm still uncertain on the usage
# of symbols. But other than that, I didn't have any other real issues. It was good practice because we still
# had to use instance variables and create a class. I had a decent time during this challenge and really didn't
# find anything tedious. I just wish I had a better understanding of when to use symbols.  
