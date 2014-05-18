# U2.W4: Cipher Challenge


# I worked on this challenge with: Fahia and Dylan.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



#def north_korean_cipher(coded_message) 
#  input = coded_message.downcase.split("") #Takes input, downcases it, and splits each individual element into an element of an array
#  decoded_sentence = []     # creates an empty array called decoded_sentence 
#  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#            "g" => "c",   # Pros: This allows a direct translation for each key
#            "h" => "d",   # Cons: It's really long and inefficient 
#            "i" => "e",   
#            "j" => "f",
#            "k" => "g",
#            "l" => "h",   
#            "m" => "i",
#            "n" => "j", 
#            "o" => "k",
#            "p" => "l",
#            "q" => "m",
#            "r" => "n",
#            "s" => "o",
#            "t" => "p",
#            "u" => "q",
#            "v" => "r",
#            "w" => "s",
#            "x" => "t",
#            "y" => "u",
#            "z" => "v",
#            "a" => "w",
#            "b" => "x",
#            "c" => "y",
#           "d" => "z"}
#            
#  input.each do |x| # Each is examining each element of the input array as x 
#    found_match = false  # if found false it leaves that element of the input as the same and pushes it decoded_sentence
#    cipher.each_key do |y| # Examining each key of the hash cipher 
#      if x == y  # If statement comparing the input element (x) with the key of cipher hash (y) for match 
#        puts "I am comparing x and y. X is #{x} and Y is #{y}." # puts string 
#        decoded_sentence << cipher[y] # Pushes cipher[y] into the array decoded_sentence
#        found_match = true #marks match as true 
#        break  # the value is found so it doesn't have to search through all the symbols
#      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #Replaces these symbols with a space
#        decoded_sentence << " " #push space into decoded array 
#        found_match = true #marks match as true 
#        break # ends the loop for the symbols 
#      elsif (0..9).to_a.include?(x) # puts the values in the range in an array 
#        decoded_sentence << x #pushes number as is into decoded array
#        found_match = true #mark match as true
#        break # ends the loop for the range class
#      end 
#    end
#    if not found_match  # if not true 
#      decoded_sentence << x #pushes the x into the decoded_sentence 
#    end
#  end
#  decoded_sentence = decoded_sentence.join("") #takes elements from array and combines them into a string
# 
#  if decoded_sentence.match(/\d+/) #finds matches for any numbers in the input 
#    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # takes that number and inserts it with an integer and divides it by 100 
#  end  
#  return decoded_sentence # Returning string of decoded sentence        
#end



# Your Refactored Solution
def north_korean_cipher(coded_message) 
  input = coded_message.downcase.split("") 
  decoded_sentence = []
   alphabet = ("a".."z").to_a 
   input.each do |x|
   found_match = false 
   if alphabet.include?(x)
      index = alphabet.index(x)
      if index - 4 < 0
          decoded_sentence << alphabet[index+22]
      else 
          decoded_sentence << alphabet[index-4]
      end  
    found_match = true 
     elsif ["@", "#","$", "%","^","&","*"].include? x 
        decoded_sentence << " " 
        found_match = true 
    end 
    if not found_match  
      decoded_sentence << x 
    end
  end
  decoded_sentence = decoded_sentence.join("") 
 
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence      
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
# Our main strategy to refactor the code was to tackle the cipher becuase we believed that that was the biggest issue. It looked
# extremely ineffienet to have it like that. So we decided to refactor that first. We decided to make an array list of the
#rather than have the hash. From there, ....
#
#We faced our biggest issue trying to refactor the cipher portion of the code. We couldnt think of a more efficient way in
#in doing so. It was also a bit diffcult in trying to figure out how our code would work with the "loop" we needed to implement.
# For example, we were able to come up with a way to go back four spaces for all the letters except A - D. 
#  I was having a little bit of trouble remembering what the index function did. But after some review and a brief
#disccusion with my pairs, I was able quickly figure how to incorporate into our refactored code. 
# I am semiconfident with this challneges learning compentenices. I feel like there is still some more material I need to review
# because I am still unfamilar with all of the methods. Also, I need to become more comfortable with using Ruby Docs.
#I enjoyed working with someone else becuase if this had to be done by myself, I would find myself stuck. 
# Creating/Refactoring was pretty tedious because even though the code worked, we had to still change the code to make 
# it more efficient and prettier. 



#Review


 