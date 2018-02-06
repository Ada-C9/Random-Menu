# Ada Random Menu generator Day 1 Homework
# Brittany Jones
# Last edited 2/5/18

puts "Here is a list of the menu items."
# Come up with the three arrays of ten items each.
# Array of Adjectives to describe the plate
fd_adj = [ "Spicy Hot" , "Cold" , "Bland" , "Exciting" , "Extreme" , "Deadly" , "Lovely" , "Chilled" , "Boiling" , "Juicy"]
# Array of cooking styles
fd_style = [ "fried" , "baked" , "seared" , "steamed" , "stinky" , "broiled" , "roasted" , "grilled" , "sauteed" , "frozen"]
# Array of food name
fd_name = ["ice cream" , "soup" , "chicken" , "crab" , "beef" , "cabbage" , "potato" , "carrots" , "salad" , "lobster"]

# Create menu array to store menu items ramdomized
menu = []
10.times do |x|
# Will delete from array once it has been accessed, so there are no duplicated menu items.
menu << "#{fd_adj.delete(fd_adj.sample)} #{fd_style.delete(fd_style.sample)} #{fd_name.delete(fd_name.sample)}"
end
# will print out each index +1, so starting with 1 instead of 0, and then:, and then each menu item x.
# prints the return value of each with indeces 1-10
menu.each_with_index do |x, i|
# This will print out a list starting at 1, and going until 10, as well as the randomly generated food name.
puts "#{i+1}: #{x}"
end


puts "\nNot seeing anything you like?"
like = gets.chomp.upcase.to_s
if like == "NO"
  puts "How do you like your food cooked?"
  cooked = gets.chomp.to_s
  fd_style << cooked
end
