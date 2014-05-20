# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#1. see if we need to pad or not
#2. if we don't need to pad, return array
#3. if we do need to pad, and they don't specificy to add anything, add nil until you reach the number pad
# is asking for


# 2. Initial Solution




#extending the arary class
#monkey patching

# 3. Refactored Solution
class Array 
    def pad(new_length, new_value=nil)
        new_array = self.clone
        if new_length <= self.length
            return new_array
        else
            push_num = new_length - self.length
            push_num.times{|x| new_array.push(new_value)}
            return new_array
        end 
    end

    def pad!(new_length, new_value=nil)
        if new_length <= self.length 
            return self 
        else
            push_num = new_length - self.length 
            push_num.times{|x| self.push(new_value)}
            return self
        end
    end
end


# 4. Reflection 
# I had a lot of trouble trying to figure out how to begin this challenge. I think my biggest problem was trying to
# figure out how to write the syntax. Also, I had to learn from an instructor/tutor that we would have to extending
# the array class so that out pad method would work. 
# After this challenge, I am feeling not that conifdent about the learning compeneticies. I still felt pretty lost
# even when I was being helped tutored. 
# It sucked that I wasn't able to to this by myself and that I got stuck on different parts. I didn't enjoy this
# challenge and everything felt tedious. 


