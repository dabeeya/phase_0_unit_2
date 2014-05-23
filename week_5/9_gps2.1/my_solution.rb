# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 
#Francisco Scala





# Our Refactored Solution

 
def bakery_num(num_of_people, fav_food) # creating method bakery_num
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #creating hash. value of keys equals servings per person
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  dessert_array = Array.new
  has_fave = false 

  my_list.each_key do |k| #iterates each key in the hash my_list
    if k == fav_food # making a comparison of each key in hash
      has_fave = true # gives a true value to fave_food
      #fav_food = k #fav_food is set to the value of the key  ***** Redundant assignment, line deleted.
    end
  end

  if has_fave == false #if has_fave is false
    raise ArgumentError.new("You can't make that food") #makes a new error to say that we cannot make that food because we have the incorrect arguements
  else
    fav_food_qty = my_list[fav_food] #creating a variable that, through the values method, returns an array made up by the value of the key established at fav_food 
    if num_of_people % fav_food_qty == 0 #if theres no remainder in num_of_people divided fav_food_quantity
      num_of_food = num_of_people / fav_food_qty #creating num_of_food variable that gives us how many food items we should make
      return "You need to make #{num_of_food} #{fav_food}(s)." # returns string 
    else #if there is a remainder 
      while num_of_people > 0
        #
        my_list.each do |k,v|
          dessert_qty = num_of_people / v
          num_of_people = num_of_people % v
          dessert_array << dessert_qty          
        end
    
        #
        # if num_of_people / my_list["pie"] > 0 # if num_of_people divided by number of servings of pie is greather than zero
        #   pie_qty = num_of_people / my_list["pie"] # pie_qty equals num_of_people divided by servings of pie
        #   num_of_people = num_of_people % my_list["pie"] # num_of_people equals the remainder of num_of_people and servings of pie
        # elsif num_of_people / my_list["cake"] > 0 #repetition of first set of conditions of pie
        #   cake_qty = num_of_people / my_list["cake"]
        #   num_of_people = num_of_people % my_list["cake"]
        # else
        #   cookie_qty = num_of_people / my_list["cookie"] 
        #   num_of_people = num_of_people % my_list["cookie"] # so we don't have an infinite loop
        # end
      end
      return "You need to make #{dessert_array[0]} pie(s), #{dessert_array[1]} cake(s), and #{dessert_array[2]} cookie(s)."
    end
  end
end
 







#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
#Overall, I had a pleasant time working with Francisco on this GPS. Although we both left we weren't as prepared
#as other students, once we started the challenge, we both did great. Our strategy was to take things one step
#at a time and the commenting section of the challenge did us wonders. We were able to see what the function
#of each line was. 
#Some problems we faced was just remembering what certain methods were. But using ruby docs, and the help of our
#instructor, we were able to find out whatever questions we had.
#I enjoyed this challenge because we didn't really have to do anything with Class. I'm still confused on a lot 
#of the concepts from Class. I didn't really find anything too tedious because I felt like we had some great
#practice and review. 

