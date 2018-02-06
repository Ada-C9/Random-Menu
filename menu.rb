def border
  puts "---------------------------------------"
end

# Random Menu Generator
# Lists the menu number of each item
# Starts at 1 not 0.
item_number = 1

# Compares length of array with number of items user wants in the menu
# Function will inform the user if too few descriptors entered
# Allows the user to add to the list of descriptors once
# Will use default descriptors if user continues to have too few descriptors
def item_amount_confirm (array, items)
  if array.length < items
    puts "You have not input enough items."
    puts "Please add at least #{items - (array.length)} more."
    add_more = gets.chomp.split(", ")
    add_more.each {|descriptor| array.push(descriptor)}
    if array.length < items
      puts "You have entered too few items again. The program will exit."
      exit
    end
  else
    puts "So you have added more descriptors than the number of items you wanted on your menu."
    puts "This is not a problem. Be aware that not all descriptives will be on the Menu."
  end
end

# Allows user to enter thier own word lists or use the premade menu descriptors
# Generates a single array made up of 3 different arrays of menu descriptors
# These will split later
def description (pre_made, items)
  if pre_made == "y" || pre_made == "Y"
    # List of desriptives
    describe = %W[Lemon Fresh Putrid Crimson Fermented Spiced Creamy Translucent Sugar Pine]
    # List of cooking styles
    cook_style = %W[roasted pan-fried jellied deep-fried poached raw seared blackened steamed broilled]
    # List of foods
    foods = %W[duck grapeleaf romano-cheese salmon green-pepper fig toast crab squab ginger]
    menu_descriptors = [describe, cook_style, foods]
  elsif pre_made != "y" && pre_made != "Y"
    puts "Enter food descriptors ie hot, cold, spiced."
    puts "Please separate each item by a comma and space."
    describe = gets.chomp.split(", ")
    if (describe.length) != items
      item_amount_confirm(describe, items)
    end
    puts "Enter methods of cooking ie fried, steamed, poached."
    puts "Please separate each item by a comma and space."
    cook_style = gets.chomp.split(", ")
    if (cook_style.length) != items
      item_amount_confirm(cook_style, items)
    end
    puts "Enter food types ie salad, brownie, chicken."
    puts "Please separate each item by a comma and space."
    foods = gets.chomp.split(", ")
    if (foods.length) != items
      item_amount_confirm(foods, items)
    end
    menu_descriptors = [describe, cook_style, foods]
  end
  return menu_descriptors
end

# Randomly selects an item in an array.
# Print random item then removes it from the array.
# Returns a new mutated array
def random_item (array)
  item_index = rand(0...array.length)
  array[item_index]
  array.delete_at(item_index)
end

border
border

puts "Welcome to the Random Menu Generator! \n"

# Prompts user to enter number of menu items
puts "How many items would you like to print on your Menu?"
puts "Please enter a numerical integer between 1 and 10.\n"
items = gets.chomp.to_i

puts "Would you like to use our premade Menu descriptors?"
puts "Please enter y to use the premade Menu descriptors."
puts "Enter anything to choose your own."
pre_made_response = gets.chomp

# Array of arrays of menu descriptors.
# These will have to be split into 3 separate arrays
menu_descriptors = description(pre_made_response, items)

# Splitting the nested array of descriptors generated above
describe = menu_descriptors[0]
cook_style = menu_descriptors[1]
foods = menu_descriptors[2]

# Allows user to enter menu items again if the number is not in the desired range
if items < 1 || items > foods.length
  puts "\n#{items} is not a numerical value between 1 and 10."
  puts "Please enter how many items you desire on the Menu again."
  items_2 = gets.chomp.to_i
  items = items_2
end

# Prints Menu based on how many items user inputs
if items >= 1 && items <= foods.length
  puts "\nTONIGHT'S MENU\n"
  border
  items.times do
    puts "#{item_number}. #{random_item(describe)} #{random_item(cook_style)} #{random_item(foods)}"
    puts "\n"
    item_number += 1
  end
else
  puts "#{items} is still not a numerical value between 1 and 10."
  puts "The program will now exit."
  exit
end
