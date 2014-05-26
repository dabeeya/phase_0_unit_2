# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode


# Input:
# Output:
# Steps:
# define class Die
# define method initialize taking 1 parameter "sides"
# define instance variable named sides that is equal to sides
# if sides is less than 1, raise an ArgumentError
# define method sides
# return instance variable sides
# define roll
# return a sample of an array of numbers from 1 to number of sides


# 3. Initial Solution

#class Die
#  def initialize(sides)
#    if sides < 1
#      raise ArgumentError.new("The number of sides is not valid")   
#    end 
#    @sides = sides
#  end
#  
#  def sides
#    @sides
#  end
#  
#  def roll
#    1 + rand(@sides)
#  end
#end


# 4. Refactored Solution

class Die
  attr_reader :sides 
  def initialize(sides)
    raise ArgumentError.new("The number of sides is not valid") unless sides > 0 
    @sides = sides 
  end
  def roll
    rand(1..sides) 
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE
die = Die.new(6)
puts die.sides == 6





# 5. Reflection 
# With some help from office hours, I was able to finish this challenge without any issues. Like before, I was having
# trouble starting the code, but after a little nudge, I was able to get the challenge done. I went back to the
# Socrates to review some of the exercises because it was very similar. The challenge was pretty fun and I
# didn't really find anything to tedious. My strategy was similar when doing the socrates example. 