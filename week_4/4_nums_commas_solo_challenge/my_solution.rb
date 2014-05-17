# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

#create method seperate_comma
#method seperate_comma needs to take integer value and change it into a string
#method then needs to count how many "digits" are in the integer
#if 3 digits, no need for comma
#

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def separate_comma(num)
	num_s = num.to_s
	numbers = num_s.length
	if numbers <= 3
		num_s
	elsif numbers % 3 == 0
		num_s.scan(/.../).join(",")
	else
		i = numbers % 3
		num_s[0..i-1] + "," + num_s[i..-1].scan(/.../).join(",")
	end
end



# 3. Refactored Solution



# 4. Reflection 
#During the beginning of this challenge, I thought it was fairly simple. I didnt run into issues in creating
#the method. It was also fairly simple for wrtiing the syntax for a integer with 3 or less digits. I started
#running into some problems when trying to figure out how I could find a way for the method seperate_comma 
#to count the number of digits the input would have and then put the comma accordlingly. 
