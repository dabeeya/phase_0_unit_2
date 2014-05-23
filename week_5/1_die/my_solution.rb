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
 # def initialize(sides)
  #	die = Die.new()
#
   #making it so that it can work for the other methods
 # end
  
  #def sides
    # code goes here
  #end
  
  #def roll
    # code goes here
  #end
#end




# 4. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("The number of sides is not valid")   
    end 
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 