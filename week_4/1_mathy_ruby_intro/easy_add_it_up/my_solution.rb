# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Jeremy Wong ].

# 1. Pseudocode
#define total as method
#go through every element of the array and add them all together
#return sum of array 1
#return sum of array 2
#create new method called sentence_maker
#go through every element in the array and join strings together
#add punc. for sentence


# 2. Initial Solution
def total (array)
	sum = 0

	array.each {|x| sum = sum + x}
	return sum
end

def sentence_maker (array)
	array[0].capitalize!
	array.join(" ") + "."


end



# 3. Refactored Solution



# 4. Reflection 