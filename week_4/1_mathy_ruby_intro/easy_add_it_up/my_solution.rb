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
# The code above does not need any refactoring


# 4. Reflection 
# I think the biggest challenge I faced with this exercise was trying to figure out which method to use. However, with some help
# from Jeremy, I was able to figure out that using the each method could help me create code to fill the requirements. 
# I still have some issues trying to figure out what we can include in the block. 
# I learned how to use the each method. I also learned that the map method can have similar functions to the each method,
# however, I have not yet looked extensively at the map method.
# I feel pretty confident about the learning competencies for this challenge. 
# I enjoyed writing out the code and having to used what I learned previously. It was good practice. 
# I found it pretty tedious trying to look through ruby docs to find a method that would allow me to modify every element 
# in an array. But once I learned to use the each method, finding the solution for for our total method was fairly simple.