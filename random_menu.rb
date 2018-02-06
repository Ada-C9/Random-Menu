# Come up with the three arrays of ten items each.
# Each list should be a different type of food or descriptor for that food.
#
# the first array can contain adjectives,
# the second, cooking styles
# the third, foods.
#
# If this was the array selection, it could create a few items like:

food_adjective = []
cooking_style = []
food_type = []
random_menu_items= []
puts "\nHow many items are on the menu?"
num_items = gets.chomp.to_i

# toggle n for number of times
puts "\nFood Adjectives"
num_items.times do |i|
  print "\n##{i + 1}: "
  adjective = gets.chomp.downcase
  food_adjective[i] = adjective
end

puts "\nCooking Style"
num_items.times do |i|
  print "\n##{i + 1}: "
  style = gets.chomp.downcase
  cooking_style[i] = style
end

puts "\nFood Type"
num_items.times do |i|
  print "\n#{i + 1}: "
  type = gets.chomp.downcase
  food_type[i] = type
end

# p "#{food_adjective}"
# p "#{cooking_style}"
# p "#{food_type}"

puts "\n===Random Menu===\n"

num_items.times do |i|

random_menu_items[i] = "#{food_adjective.delete(food_adjective.sample)} #{cooking_style.delete(cooking_style.sample)} #{food_type.delete(food_type.sample)}"
# Deletes the element from each array once used in randomly generating a combo of strings
puts "Meal ##{i + 1}: #{random_menu_items[i]}"
# p "#{food_adjective}"
# p "#{cooking_style}"
# p "#{food_type}"
end
puts ""
