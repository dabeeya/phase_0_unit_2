# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
# define get_grade as method
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#find the sum of all the elements in the array
#divide the sum by length of array
#if above 90, A
#if above 80 B
#go all the way to F

# 2. Initial Solution
def get_grade (array)
	sum = 0
	array.each {|x| sum += x}
	average = sum / array.length

	if average >= 90
		"A"

	elsif average >= 80 
		"B"

	elsif average >= 70 
		"C"

	elsif average >= 60 
		"D"

	else 
		"F"	
		
	end
end



# 3. Refactored Solution



# 4. Reflection 

This was similar . 