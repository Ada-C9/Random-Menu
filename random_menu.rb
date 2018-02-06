# Come up with the three arrays of ten items each. Each list should be a different type of food or descriptor for that food. For example, the first array can contain adjectives, the second, cooking styles and the third, foods.

adjectives = ["spicy", "salty", "sweet", "savory", "saucy", "bitter", "sour", "buttered", "Korean", "Italian"]
styles = ["fried", "baked", "sauteed", "broiled", "steamed", "roasted", "sous-vide", "wood-fired", "grilled", "smoked"]
foods = ["potatoes", "halibut", "tofu", "sirloin", "veggies", "eggs", "zoodles", "stir-fry", "curry", "pasta"]

# Your generator should pull one item from each array you made in the baseline requirements to create a "menu item".
# When the program runs, it should create and show a list of ten numbered menu items.

# 10.times do |i|
#   puts "#{i + 1}. #{adjectives.sample} #{styles.sample} #{foods.sample}"
# end

# Optional Enhancements
# Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is hot pan-fried dumplings, then the phrases hot, pan-friend and dumpling cannot individually be used in any other menu items.

10.times do |i|
  adjective = adjectives[rand(adjectives.length)]
  style = styles[rand(styles.length)]
  food = foods[rand(foods.length)]
  puts "#{i + 1}. #{adjective} #{style} #{food}"
  adjectives.delete(adjective)
  styles.delete(style)
  foods.delete(food)
end

# Expand your solution to allow the user to determine how many items they'd like to see via user input. Note: You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.

puts "How many menu items would you like to see?"
num = gets.chomp.to_i

until (num >= 1) && (num <= 10)
  puts "Please enter a number between 1 and 10."
  num = gets.chomp.to_i
end

num.times do |i|
  puts "#{i + 1}. #{adjectives.sample} #{styles.sample} #{foods.sample}"
end

# Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array.

adjectives = []
styles = []
foods = []

puts "Welcome to the random menu generator! We're going to start by entering some adjectives about food."

5.times do
  print "Please enter an adjective (ex: salty): "
  adjective = gets.chomp.downcase.to_s
  adjectives << adjective
end

puts "Now we're going to enter some cooking styles."

5.times do
  print "Please enter a cooking style (ex: broiled): "
  style = gets.chomp.downcase.to_s
  styles << style
end

puts "Now we're going to enter some foods."

5.times do
  print "Please enter an food (ex: potatoes): "
  food = gets.chomp.downcase.to_s
  foods << food
end

puts "Now, how many random menu items would you like to see?"
num = gets.chomp.to_i

until (num >= 1) && (num <= 5)
  puts "Please enter a number between 1 and 5."
  num = gets.chomp.to_i
end

num.times do |i|
  adjective = adjectives[rand(adjectives.length)]
  style = styles[rand(styles.length)]
  food = foods[rand(foods.length)]
  puts "#{i + 1}. #{adjective} #{style} #{food}"
  adjectives.delete(adjective)
  styles.delete(style)
  foods.delete(food)
end
