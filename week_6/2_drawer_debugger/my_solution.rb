# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item (item) #added parameter
		@contents << item
	end
	
	def remove_item(item = @contents.pop) #removes the last element of @contents and returns it
		@contents.delete(item)
	end

	def dump  # should return a drawer with no contents
		@contents = [] # to empty array content
		puts "Your drawer is empty."
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
attr_reader :type

# Are there any more methods needed in this class?
# there should be a clean_silverware method

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true 
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? should return no items because it is empty


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork = Silverware.new("fork") #added
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end


assert {silverware_drawer.dump == [] }

puts spork.drop == false
puts spork.clean_silverware == true
puts spork.eat == false
puts spork.toss == true



# 5. Reflection 
# I'm not sure if I'm doing the assertion test correctly. It seems that I seem to be missing something but I'm
# not entirely sure. But it wasn't too difficult finding out what methods we had to add looking at the driver
# code. The challenge wasn't too bad. 