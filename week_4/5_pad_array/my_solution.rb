# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#1. see if we need to pad or not
#2. if we don't need to pad, return array
#3. if we do need to pad, and they don't specificy to add anything, add nil until you reach the number pad
# is asking for


# 2. Initial Solution



# 3. Refactored Solution
class Array
def pad(min_size, val = nil)
		new_array = self
		[min_size - self.length, 0].max.times { new_array << val }
		new_array
end

def pad!(min_size, val = nil)
		[min_size - self.length, 0].max.times { self << val }
		self
	end
end


# 4. Reflection 