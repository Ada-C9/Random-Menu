#Arrays of descriptors/food, could have user input them and push into Arrays

adjective_one = ["smelly", "noisey", "hot", "cold", "freezing", "tepid",
"squishy", "pungent", "fuzzy", "crazy"]

adjective_two = ["smoked", "boiled", "crunchy", "sweet", "soft", "raw",
"okay", "weird", "normal", "sharp"]

actual_food = ["salmon", "turnips", "sprouts", "steak", "sushi", "cauliflower",
"cheese", "dumplings", "kale", "meatballs"]

# Get user input for menu length

puts "How many menu items would you like to choose from?"
menu_items = gets.chomp.to_i

# Make sure menu length is between 1 and 10

until menu_items <= 10 && menu_items > 0
  puts "Please enter a number between 1 and 10."
  menu_items = gets.chomp.to_i
end

# Prints menu from menu length and arrays

puts "Here's what's on the menu today: "

num = 0

menu_items.times do
  num += 1
  adj_one = adjective_one.sample
  adj_two = adjective_two.sample
  food = actual_food.sample
  puts "#{num}. #{adj_one}, #{adj_two}, #{food}"
  adjective_one.delete(adj_one)
  adjective_two.delete(adj_two)
  actual_food.delete(food)
end
