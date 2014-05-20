# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# create method essay_writer
# create 3 topics
# create a template for essay
# depending on which subject, return the correct termplate

# 3. Initial Solution
def essay_writer (title, topic, date, thesis_statement)
	math = "#{title} \n In this brief essay, we will be talking about #{topic}. In #{date}, there was a huge
	 finding in the area of #{topic}. So overall, #{thesis_statement}."
	english = "#{title} \n In this brief essay, we will be talking about #{topic}. In #{date}, there was a huge
	 finding in the area of #{topic}. So overall, #{thesis_statement}."
	science = "#{title} \n In this brief essay, we will be talking about #{topic}. In #{date}, there was a huge
	 finding in the area of #{topic}. So overall, #{thesis_statement}."


	if topic = math
		return math
	elsif topic = english
		return english
	else 
		return science
	end
end




# 4. Refactored Solution
#intial solution seems as simple and direct as possible







# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer("Math is Fun", "math", "August 25th", "thesis_statement")

puts essay_writer("English 101", "english", "April 19", "thesis_statement")

puts essay_writer("Science is Cool", "science", "December 12", "thesis_statement")



# 5. Reflection 
# I thought this challenge wasn't too difficult to complete. 
# I didn't really learn anything new. However, completing this challenge was good practice. It's easy for me
# to forget what we learned about Ruby. 
# I feel pretty confident about the learning competencies of this challenge. It seemed like it was mainly review.
# I found creating the templates to be pretty tedious. But I made mine short and sweet and just copied them onto
# the other templates.

