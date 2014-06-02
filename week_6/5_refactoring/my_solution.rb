# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: Dylan Krause].


# Original Solution

#class CreditCard #Creates a new class CreditCard. Raises an arguement error if the digits of numbers does not equal to 16. #Also creating instance variables 
#	def initialize(creditCardNum) #initialize class instance with creditCardNUm argument 
#		raise ArgumentError, 'Should be 16 numbers' if Math.log10(creditCardNum).to_i + 1 != 16
#		@creditCardNum = creditCardNum
#		doubled_number = doubled(creditCardNum)
#		@total = sum(doubled_number)
#	end
#
#	def doubled(num) #Takes a number and splits it into an array; Rotates elements two spaces to the right so second to #last index becomes the first index
#doubles the elements at even indexes including the 0th index; return the array of indexes 
#		arr = num.to_s.split('')
#		shifted = arr.rotate(-2)
#		@arrOfInt = shifted.map.with_index do |num, index| 
#			if index % 2 == 0 || index == 0 
#				num.to_i * 2 
#			else
#				num.to_i 
#			end
#		end
#		arrOfInt
#	end
#
#	def sum(arrI) #putting the array into a string and then into integers so that we now have an array of integers. Then #finds the sum
#		arrOf_SepInt = arrI.to_s.split('').map(&:to_i)
#		arrOf_SepInt.inject(:+)
#	end    
#
#	def check_card #checking that the card is valid. total sum must be divisible by 10  
#		@total % 10 == 0 ? true : false
#	end
#end


# Refactored Solution

class CreditCard 
	def initialize(creditCardNum) 
		raise ArgumentError, 'Should be 16 numbers' if creditCardNum.to_s.size != 16
		@creditCardNum = creditCardNum
		@total = sum(doubled(creditCardNum))
	end

	def doubled(num) 
		@arrOfInt = num.to_s.split("").map.with_index do |num, index| 
			(index % 2 == 0 || index == 0) ? (num.to_i * 2) : num.to_i 
		end
		@arrOfInt
	end

	def sum(arrI) 
		arrOf_SepInt = arrI.to_s.split('').map(&:to_i)
		arrOf_SepInt.inject(:+)
	end    

	def check_card 
		@total % 10 == 0 ? true : false
	end
end



# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion Failed!" unless yield 
end

card = CreditCard.new(4563960122001999)
assert{card.check_card} # => true

 card = CreditCard.new(4408041234567892)
 assert{card.check_card} # => false

 card = CreditCard.new(44080412345678)
 card.check_card # => should throw error




# Reflection 
# This challenge wasn't too difficult because Dylan and I worked on it together. It was definitely a lot easier
# having the extra brain power. There were times when we were refactoring that we wanted to change certain lines. 
# However, we also didn't want to make any fundamental changes to the foundation. So, that put us in a pickle.
# But we were successful in finding some lines that we thought we repetitive or complex. So, keeping that in mind,
# we deleted a few lines, changed the argument error and made it a bit more readable. I find the overall process 
# of refactoring tedious, but I can see why it is necessary. 