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
# No need to refactor



# 4. Reflection 

# This was similar to an exercise we had to complete for Socrates so I found it to be a bit easier to do. However, I don't recall
# if we had to use the each method as well, but I incorporated it into the code when working on the challenge. Because I used
# the each method in the prior exercise, I was able to use it for this one as well. I didn't really have any questions because
# of the prior knowledge I had.
# I didn't learn any new tricks from this exercise, but it was definitely good practice because I felt like a forgot a lot of
# the material from ruby.
# I feel pretty confident about the learning competencies. With a little nudge, I was able to complete these exercises
# without much trouble.
# I enjoyed practicing the concepts of ruby again. 
# There wasn't anything I found too tedious. I didn't have to really go through ruby docs since I knew I wanted to use the each
# method for this problem.