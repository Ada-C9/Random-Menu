# Ada Random Menu generator Day 1 Homework
# Brittany Jones
# Last edited 2/5/18
puts "How many menu items would you like to view?"
menu_items = gets.chomp.to_i
if menu_items < 11 && menu_items > 0
  puts "Here are #{menu_items} items from our menu:"
elsif menu_items > 10
puts "We only have 10 menu items. Please enter 1 - 10."
menu_items = gets.chomp.to_i
puts "Here are #{menu_items} items from our menu:"
end


# Come up with the three arrays of ten items each.
# Array of Adjectives to describe the plate
fd_adj = [ "Spicy hot" , "Cold" , "Bland" , "Exciting" , "Extreme" , "Deadly" , "Lovely" , "Chilled" , "Boiling" , "Juicy"]
# Array of cooking styles
fd_style = [ "fried" , "baked" , "seared" , "steamed" , "stinky" , "broiled" , "roasted" , "grilled" , "sauteed" , "frozen"]
# Array of food name
fd_name = ["Ice Cream" , "Soup" , "Chicken" , "crab" , "beef" , "Cabbage" , "Potato" , "Carrots" , "Salad" , "Lobster"]

# Create menu array to store menu items ramdomized
menu = []
menu_items.times do |x|
# Will delete from array once it has been accessed, so there are no duplicated menu items.
menu << "#{fd_adj.delete(fd_adj.sample)} #{fd_style.delete(fd_style.sample)} #{fd_name.delete(fd_name.sample)}"
end
# will print out each index +1, so starting with 1 instead of 0, and then:, and then each menu item x.
# prints the return value of each with indeces 1-10
menu.each_with_index do |x, i|
# This will print out a list starting at 1, and going until 10, as well as the randomly generated food name.
puts "#{i+1}. #{x}"
end
