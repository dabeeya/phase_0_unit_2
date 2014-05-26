# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a die with the parameter of an array 
# Output: side returns number of sides of a die and roll returns a random label of the die
# Steps: create class Die
# raise argument if less than 1 side
# create method sides that returns the number of sides 
# create method roll that returns a random label of a side


# 3. Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.length < 1
  		raise ArgumentError.new("The die must contain at least one character string")
  	end
  end

  def sides
  	return @labels.length	
  end

  def roll
  	random = rand(@labels.length)
    @labels[random]
  end
end



# 4. Refactored Solution
# no need to refactor




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new (['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides
puts die.roll




# 5. Reflection 
# This challenge was fairly simple because it was pretty similar to challenge 1. One issue I had was when I was 
# creating the roll method though. However, after constant double checking I finally found out that doing 1 + 
# rand(labels.length) and putting that number in @labels wouldn't work because there was a number that would
# not be accounted for in the number of elements in the array. The challenge was fun and I didn't really find 
#anything too tedious. 
