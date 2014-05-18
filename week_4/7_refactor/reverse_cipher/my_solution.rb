# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #creates
    alphabet = ('a'..'z').to_a #creates a variable called alphabet and has a through z in it, which then creates it into an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]#creates a hash, keys = alphabet values= 4 letters forward
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #creates an array with these symbols that will be used to be replace with a space
    
    original_sentence = sentence.downcase#downcases original sentence 
    encoded_sentence = []#creates an empty bracket called encoded sentence
    original_sentence.each_char do |element|# for each character we will need to do something
      if cipher.include?(element)# 
        encoded_sentence << cipher[element]#pushes the vaule of the cipher in to encoded_sentence array
      elsif element == ' '
        encoded_sentence << spaces.sample#if element is a space, replaces it with a symbol from the spaces array
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join #returns the encoded_sentence array and combines the elements as a string
end

# Questions:
# 1. What is the .to_a method doing?
# The to_a method creates an turns whatever is in front of the "." and turns it into an array
# 2. How does the rotate method work? What does it work on? 
# It takes the alphabet array and rotates it by four elements. So the first element would be the fourth element in the original array
# 3. What is `each_char` doing?
# The each each_char is similar to the each method, but it allows us to do something to every character in the string rather
# than the elements of an array.
# 4. What does `sample` do?
# It picks a random element of a sample. So that is why when running the driver tests, the symbols for spaces differed for each
# each line.
# 5. Are there any other methods you want to understand better?
# From this exercise, I think I am ok. 
# 6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse?
# I would say this looks pretty similar to our refactored solution. We had a similar idea with turning the alphabet into an
#array. So, I can;t really say whats better or worse than our refactored solution, since it essentially has the same 
#principle.
# 7. Is this good code? What makes it good? What makes it bad?
# It seems like pretty good code to me. Like I mentioned before, we did something similar when refactoring during our cipher 
# challenge. The code seems pretty clear and straight forward to me. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No, although the letters are the same, some symbols for the spaces differ
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# This challenge seemed to be pretty straight forward so I didn't have too much trouble completing the assignment. It was great
# because during our cipher challenge, our refactored solution was very similar to the code above. So it kind of made things
# a little bit easier to understand.
# We didn't really have to code, but whatever questions I had about a method, I was able to use ruby docs for more information
# I think just writing the syntax 
# I didn't really learn any new tricks, but I did learn sample and rotate method. 
# I would say I 80% percent confident with the learning competencies. But because I'm still not familiar with a lot of the methods
# on ruby docs, I worry that I can't be confident just yet.
# I enjoyed everything about this challenge. It allowed me to read through code and made me learn what each line did.
# There wasn't anything tedious I found. 
