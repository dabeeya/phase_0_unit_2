# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 16 digit credit card number
# Output: true if card is valid and false if it isnt
# Steps: create class CreditCard
# create method to double every other digit, starting from the 2nd to last number
# then add up the the numbers that were doubled and the numbers that werent
# then create method that checks if the sum is divisible by 10 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(num)
		raise ArgumentError.new("The number of digits in credit card is not valid") if num.to_s.length != 16
		@card_num = num
	end

	def check_card
		double_array
		sum_digits
		mult_ten
	end


	def double_array
		@num_array = @card_num.to_s.scan(/./).map { |x| x.to_i }

		i = 0		
		@double_even_array = []
		while i < 16
			@double_even_array << @num_array[i]*2
			i += 2
		end
	end

	def sum_digits
		@double_sum = @double_even_array.join("").scan(/./).map { |x| x.to_i }.inject(:+)

		i = 1
		@odd_array = []
		while i < 16
			@odd_array << @num_array[i]
			i += 2
		end

		@untouched_sum = @odd_array.inject(:+)
		@total_sum = @double_sum + @untouched_sum
	end

	def mult_ten
		@total_sum % 10 == 0
	end

end


# 4. Refactored Solution
#doesnt seem like i need to refactor





# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4408041234567893)
p card.check_card == true 				

card = CreditCard.new(4408041234567892)
p card.check_card == false




# 5. Reflection 
# I thought this excercise was fairly challenege. I knew what steps to take but I wasn't sure which methods to use.
# But once I figured out which to use (from help), I was able to create the methods necessary. I had a fairly difficult
# time and probably would not have been able to figure it out without help. I didn't like the challenge to much
# becuase I got frustrated and felt everything was pretty tedious. I will need to make sure I review this challenge
# again to make sure I understand everything properly. 
