# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

#create method seperate_comma
#we need to take integer value and change it into a string
#method then needs to count how many "digits" are in the integer
#if 3 digits, no need for comma
#put in as many commas needed




# 2. Initial Solution
#def separate_comma(num)
#	num_s = num.to_s
#	numbers = num_s.length
#	if numbers <= 3
#		num_s
#	elsif numbers % 3 == 0
#		num_s.scan(/.../).join(",")
#	else
#		i = numbers % 3
#		num_s[0..i-1] + "," + num_s[i..-1].scan(/.../).join(",")
#	end
#end



# 3. Refactored Solution
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



# 4. Reflection 
# During the beginning of this challenge, I thought it was fairly simple. I didn't run into issues in creating
# the method. It was also fairly simple for writing the syntax for a integer with 3 or less digits. I started
# running into some problems when trying to figure out how I could find a way for the method separate_comma 
# to count the number of digits the input would have and then put the comma accordingly. So after looking at ruby
# docs, I found the scan method to suffice for what I needed to do. 
# I learned about the scan method!
# I am semi-confident with the learning competencies with this challenge. It was good practice having to do similar
# things from the previous challenges, but I don't think I completely understand the scan method. 
# The challenge was pretty fun, until I got stuck. It took  me a while trying to figure out how to use the scan 
# method.
# I didnt really find anything to tedious until I had to look through ruby docs. I hope there will be a day when
# I will barely need to use ruby docs.
